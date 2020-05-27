#!/bin/sh

for k in $(jq '. | keys | .[]'  <<< "$CONFIG_LOCATIONS"); do
    value=$(jq -r ".[$k]"  <<< "$CONFIG_LOCATIONS");
    remote=$(jq -r '.remote' <<< "$value");
    local=$(jq -r '.local' <<< "$value");
    /root/.local/bin/aws s3 cp $remote $local;
done | column -t -s$'\t'

# config-pocock
An entrypoint that will fetch a config from s3 when the container is started. 

## Usage
Add aws cli to the dockerfile.\
Example of how to run seen in the docker-compose.\

Set the following environment variables:\
`AWS_ACCESS_KEY_ID: "ACCESSKEY"` \
`AWS_SECRET_ACCESS_KEY: "SECRETKEY"` \
`S3_CONFIG_LOCATION: "s3://bucketname/folder/file"` \
`LOCAL_CONFIG_LOCATION: "path/to/file"`

## Name
Config-pocock is named after the famous the rugby flanker and fetcher David Pocock

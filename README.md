# config-puller
An entrypoint that will pull a config from s3 when the container is started

## Usage
Add aws cli to the dockerfile.\
Example of how to run seen in the docker-compose.\

Set the following environment variables:\
`AWS_ACCESS_KEY_ID: "ACCESSKEY"` \
`AWS_SECRET_ACCESS_KEY: "SECRETKEY"` \
`CONFIG_LOCATIONS: [{"remote": "s3://bucketname/folder/file1",
                      "local": "path/to/file1},
                      {"remote": "s3://bucketname/folder/file1",
                       "local": "path/to/file1},]`
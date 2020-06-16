# Mini Connect

This is a Docker image for RStudio Connect as small as possible.

The main purpose is to encrypt config variables until RStudio provide a mechanism that doesn't require stopping the main server.

## Usage

```shell
docker run --rm -i \
  -v /var/lib/rstudio-connect/db/secret.key:/var/lib/rstudio-connect/db/secret.key:ro \
  jumpingrivers/mini-connect \
  /opt/rstudio-connect/bin/rscadmin configure --encrypt-config-value
```

```shell
echo "VALUE_TO_ENCRYPT" | ./encrypt-config-value.sh
```

## Tags

```
REPOSITORY                  TAG     IMAGE ID      CREATED         SIZE
jumpingrivers/mini-connect  latest  bf95e484e94e  14 minutes ago  637MB
```

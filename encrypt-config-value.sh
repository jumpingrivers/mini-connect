#!/bin/sh

docker run --rm -i \
  -v /var/lib/rstudio-connect/db/secret.key:/var/lib/rstudio-connect/db/secret.key:ro \
  jumpingrivers/mini-connect \
  /opt/rstudio-connect/bin/rscadmin configure --encrypt-config-value

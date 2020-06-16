#!/bin/sh

docker run --rm -i \
  -v /etc/rstudio-connect:/etc/rstudio-connect:ro \
  -v /var/lib/rstudio-connect:/var/lib/rstudio-connect:ro \
  jumpingrivers/mini-connect \
  /opt/rstudio-connect/bin/rscadmin configure --encrypt-config-value

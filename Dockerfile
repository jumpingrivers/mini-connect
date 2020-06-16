FROM ubuntu:18.04
ARG rsc_version=1.8.2-10
RUN apt-get -y -qq update && apt-get install -y gdebi-core curl \
 && curl -sO https://s3.amazonaws.com/rstudio-connect/rstudio-connect_${rsc_version}_amd64.deb \
 && gdebi --non-interactive rstudio-connect_${rsc_version}_amd64.deb \
 && rm -rf rstudio-connect_${rsc_version}_amd64.deb /var/lib/apt/lists/*

ARG BASE_IMAGE=python
ARG BASE_TAG=3.11-alpine

FROM ${BASE_IMAGE}:${BASE_TAG}

LABEL maintainer="Romain THERRAT <romain@pockost.com>"
ARG VCS_URL="https://github.com/pockost/docker-scrapy"
ARG DESCRIPTION="Docker image for running scrapy."
ONBUILD ARG IMAGE_NAME
ONBUILD ARG VCS_REF
ONBUILD ARG VERSION
ONBUILD ARG BUILD_DATE


ONBUILD RUN pip install --no-cache-dir scrapy==${VERSION}

ENTRYPOINT ["scrapy"]
CMD ["--help"]

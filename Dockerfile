FROM python:3.6-slim-stretch
LABEL maintainer="Tsuyoshi Hombashi <tsuyoshi.hombashi@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
    iputils-ping \
    && rm -rf /var/lib/apt/lists/* \
    && pip install pingparsing==0.13.6

ENTRYPOINT ["pingparsing"]
CMD ["-h"]

FROM python:3.8-slim-buster
LABEL maintainer="Tsuyoshi Hombashi <tsuyoshi.hombashi@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
    iputils-ping \
    && rm -rf /var/lib/apt/lists/* \
    && pip install pingparsing==1.0.3

ENTRYPOINT ["pingparsing"]
CMD ["-h"]

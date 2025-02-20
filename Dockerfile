FROM apache/superset:latest
USER root

RUN apt-get update && apt-get install -y \
    python3-dev \
    default-libmysqlclient-dev \
    build-essential \
    pkg-config

RUN pip install \
    authlib \
    psycopg2-binary

USER superset
FROM yandex/clickhouse-server:21.3

MAINTAINER dmamontov

ADD init-db.sh /docker-entrypoint-initdb.d/
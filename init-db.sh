#!/bin/bash
set -e

cat <<EOT >> /etc/clickhouse-server/users.d/user.xml
<yandex>
  <!-- Docs: <https://clickhouse.tech/docs/en/operations/settings/settings_users/> -->
  <users>
    <clickhouse>
      <profile>default</profile>
      <networks>
        <ip>::/0</ip>
      </networks>
      <password>clickhouse</password>
      <quota>default</quota>
    </clickhouse>
  </users>
</yandex>
EOT

clickhouse client -n <<-EOSQL
	CREATE DATABASE IF NOT EXISTS clickhouse;
EOSQL
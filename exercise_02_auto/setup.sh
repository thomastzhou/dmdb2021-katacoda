#!/bin/bash

apt-get install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
apt-get update
apt-get install -y postgresql postgresql-contrib
pg_ctlcluster 13 main start
sudo -i -u postgres bash
psql -U postgres -c "ALTER USER postgres PASSWORD 'myPassword';"
cd /tmp
unzip datasets.zip
psql -U postgres employee < /tmp/employee/schema.sql
psql -U postgres -d employee -f /tmp/employee/inserts.sql
psql -U postgres tpch < /tmp/tpch/schema.sql
psql -U postgres -d tpch -f /tmp/tpch/inserts.sql
psql -U postgres zvv < /tmp/zvv/schema.sql
psql -U postgres -d zvv -f /tmp/zvv/inserts.sql
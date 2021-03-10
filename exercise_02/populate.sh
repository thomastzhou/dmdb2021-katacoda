#!/usr/bin/env bash

docker cp /tmp/datasets.zip postgres-server:/datasets.zip
docker exec postgres-server unzip datasets.zip

docker exec postgres-server sh -c "psql -U postgres employee < /employee/schema.sql"
docker exec postgres-server sh -c "psql -U postgres -d employee -f /employee/inserts.sql"
docker exec postgres-server sh -c "psql -U postgres tpch < /tpch/schema.sql"
docker exec postgres-server sh -c "psql -U postgres -d tpch -f /tpch/inserts.sql"
docker exec postgres-server sh -c "psql -U postgres zvv < /zvv/schema.sql"
docker exec postgres-server sh -c "psql -U postgres -d zvv -f /zvv/inserts.sql"
#### Populating the Databases
Let's first *quit* the `psql` program with:

``\q``{{execute}}

Now we will extract the datasets that will be used for the SQL exercises:

``cd /tmp``{{execute}}

``unzip datasets.zip``{{execute}}

After the files have been extracted, we define a schema

``psql employee < /tmp/employee/schema.sql``{{execute}}

and load the data.

``psql -d employee --user postgres -f /tmp/employee/inserts.sql``{{execute}}

We now repeat this procedure for the other two exercise datasets.

##### TPC-H
``psql tpch < /tmp/tpch/schema.sql``{{execute}}

``psql -d tpch --user postgres -f /tmp/tpch/inserts.sql``{{execute}}

##### ZVV
``psql zvv < /tmp/zvv/schema.sql``{{execute}}

``psql -d zvv --user postgres -f /tmp/zvv/inserts.sql``{{execute}}
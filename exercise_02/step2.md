#### Create and Populate Databases

Let's first wait for the script to create and populate all of our databases. Then, connect to the database using either client:

`psql.sh -U postgres`{{execute}}
`pgcli.sh -h postgres-server -u postgres`{{execute}}

Now we are connected to our DBMS, we can use the following command to *list* all existing database instances:

``\l``{{execute}}

In addition to three default database instances, we should be able to see the three database instances that will be used for the exercise: **employee**, **tpch**, and **zvv**. 
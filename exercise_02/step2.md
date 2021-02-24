#### Creating the Databases

Now we are connected to our DBMS, we can use the following command to *list* all existing database instances:

``\l``{{execute}}

We see that there are three database instances already there. We now create the three databases that will be used during the exercise.

``CREATE DATABASE employee;``{{execute}}

``CREATE DATABASE zvv;``{{execute}}

``CREATE DATABASE tpch;``{{execute}}

Now if we list the database instances again:

``\l``{{execute}}

we can observe the three new database instances.
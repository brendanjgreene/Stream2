#LEARNING OUTCOMES

##Topics include:

##Installation of MongoDB
##Configuration of MongoDB
##Testing basic CRUD functionality

To have launchd start mongodb now and restart at login:
  brew services start mongodb
Or, if you don't want/need a background service you can just run:
  mongod --config /usr/local/etc/mongod.conf
==> Summary
🍺  /usr/local/Cellar/mongodb/3.4.1: 17 files, 261.5M
to start MongoDB:
command prompt:

$mongod

to start mongo shell navigate to: 
command prompt:

$cd /usr/local/Cellar/mongodb/3.4.1/bin

then start mongo shell:
command prompt:

$ mongo


Challenge
Explore the database access commands in more detail in the links below. Try and execute the shown examples.

https://docs.mongodb.org/manual/tutorial/query-documents/
https://docs.mongodb.org/manual/tutorial/insert-documents/
https://docs.mongodb.org/manual/tutorial/modify-documents/
https://docs.mongodb.org/manual/tutorial/remove-documents/
#Topics include:

##Setting up Flask
##Using a requirements file
##Running the app in Debug mode
##Routing
##Templates
##Build a second simple web application

###USEFUL RESOURCES

https://www.fullstackpython.com/flask.html
http://flask.pocoo.org/

The reason Flask doesn’t also use port 80 is that using any port below 1023 (otherwise known as system ports) requires admin rights, and this would in turn mean running your program and PyCharm as Superuser. The Principle of Least Privilege (https://en.wikipedia.org/wiki/Principle_of_least_privilege) is a recommendation that you always run programs with the least privilege possible to function. Running PyCharm as Superuser would open up the possibility of it damaging your computer, which is much less likely when running with user-level permissions.
For the creation of this project, I've divided it in two separate containers being run in cooperation. 
On one, a database PostGis, the mdillon/postgis/, as this is the best database to deal with the geographic component of the
data. The other container is an app created with the Django framework (TODO).

![image](https://user-images.githubusercontent.com/38086218/213729102-00dc9a25-13d8-46fa-9599-eeef97de48a9.png)

Until this point, I've created a Django application, dockerized it and I've being working on the integration of both containers (database and application). 

TODO: As soon as the application and the database are communicating properly, I will define the models and populate the 
database with the provided data and then define the users authorization and endpoints mentioned.


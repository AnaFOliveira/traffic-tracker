For the creation of this project, I've divided it in two separate containers being run in cooperation. 
On one, the database suggested in the documentation, the mdillon/postgis/, as this is the best database to deal with the geographic component of the
data. The other container is an app created with the Django framework (TODO).

!![image](https://user-images.githubusercontent.com/38086218/213729102-00dc9a25-13d8-46fa-9599-eeef97de48a9.png)

Until this point, I've created a simples Django application, dockerized it and I've being working on the communication
of the two (database and application). During this part, a number of bugs happened involving the use of the docker-compose file, namely with :
    - the volumes created for sharing scripts that should only be used once, and not repeated when creating the images/containers. An example is the creation of the initial database, so that the data is not lost
    - the creation of the database automatically inside the corresponding image using a makefile and bash. Initially this was created manually, and then automated using this solution, which I haven’t created before  
    - some difficulty adapting the solution from postgres to postGis (namely the dependencies from Django)

At this point, I'm trying to solve the dependencies, as some of the packages such as GEOs is not being properly recognized and so the application is not fully adapted to PostGis yet. 
application is not properly adapted from postgres to postgis. 

As soon as the application and the database are communicating properly, I will define the models and populate the 
database with the provided data and then define the users authorization and endpoints mentioned.



_________

# traffic-tracker

Este projeto está dividido em dois containers individuais sendo corridos em cooperação. Num container está a base de dados sugerida na documentação (mdillon/postgis), sendo esta a mais adequada para a gestão dos dados tendo em conta a 
sua componente geográfica. O outro container inclui a aplicação criada com a framework Django (ainda em processo).

![image](https://user-images.githubusercontent.com/38086218/213729064-169ff679-73d3-4a78-bddc-d60b155d9987.png)


Até este momento, foi criada uma aplicação simples de Django e compartimentalizada, pelo que neste momento estou a trabalhar
na comunicação entre ambas as imagens (base de dados e aplicação). Durante este processo, lidei com vários bugs relacionados
com a utilização do docker-compose, nomeadamente:
    - volumes criados para partilha de ficheiros a serem utilizados uma única vez, que não devam ser repetidos aquando 
da recriação das imagens/containers, como a criação da base de dados inicial, de modo a que os dados não sejam perdidos
    - criação da base de dados dentro da respetiva imagem, criada usando ficheiros makefile e bash, de modo a que seja 
criada automaticamente. Inicialmente este processo foi feito manualmente, mas de seguida automatizado usando a solução do
ficheiro makefile, o qual nunca tinha criado anteriormente
    - alguma dificuldade a adaptar a solução de postgres para postGis (nomeadamente devido as dependências do django)

Neste momento estou a resolver as dependências, uma vez que alguns dos packages como o GEOS não estão a ser devidamente
reconhecidos e portanto a aplicação não está completamente adaptada do postgres para postgis.

Assim que a aplicação e a base de dados estejam a comunicar devidamente, irei definir os modelos e popular a base
de dados com os dados providenciados, definir as autorizações dos utilizadores e os endpoints mencionados.

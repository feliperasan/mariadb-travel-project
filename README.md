# SQL Travel Project
<div align="center">
![MariaDB](https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
</div>


The project consists of presenting my skills with the **SQL** language, together with Entity and Relationship Diagram, using the **MariaDB** Database Management System (DBMS) together with the **Dbeaver** database administrator and the use of virtualization of the DBMS with **Docker** containers.


## Knowledge

 - [Structured Query Language](https://www.sqltutorial.org/)
 - [Entinty and Relationship Diagram](https://www.geeksforgeeks.org/introduction-of-er-model/)
 - [Database Management System (DBMS) MariaDB](https://mariadb.org/documentation/)
 - [Database Administrator Dbeaver](https://dbeaver.io/download/)
 - [Virtualization with Docker](https://docs.docker.com/)


## Entity Relationship Diagram
![QuickDBD-export](https://github.com/feliperasan/sql-travel-project/assets/32422863/bcc1d91f-6e27-4fc3-807f-f0c72e7669f6)

## Requirements

To execute this project you will need the following tools:
- MariaDB
- Dbeaver
- Docker CLI
- Operating System based on Linux (Recommended)



## Running
Considering that you already have all the tools installed on your Linux Kernel based operating system. Abra o seu terminal linux e execute os seguintes passos:

Pull the image from the latest version of MariaDB
```docker
docker pull mariadb
```
Run a container containing the MariaDB image
```docker
docker run --name some-mariadb -v /my/own/datadir:/var/lib/mysql:Z -e MARIADB_ROOT_PASSWORD=12345 -d mariadb:latest
```
Check if the container is running
```docker
docker ps
```
Agora verifique em qual endereço IP o container está sendo utilizado
```docker
docker inspect id_container | grep IPAddress
```

Get the IPAddress and configure it in Dbeaver to access the database, open a script file in Dbeaver and then create, query, insert and delete information with the code that was inserted in github.
## Authors

- [@feliperasan](https://www.github.com/feliperasan)

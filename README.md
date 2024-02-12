# SQL Travel Project

<div align="center">
 
 ![MariaDB](https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white)
 ![Dbeaver](https://img.shields.io/badge/Dbeaver-FFF?style=for-the-badge&logo=dbeaver&logoColor=000)
 ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white) 
 ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black) 

 <img src="https://github.com/feliperasan/mariadb-travel-project/assets/32422863/2a1f9f09-967d-42f0-9152-0277541f0ea5" width="180"/>
 
</div>




The project consists of presenting my skills with the **SQL** language, together with Entity and Relationship Diagram, using the **MariaDB** Database Management System (DBMS) together with the **Dbeaver** database administrator and the use of virtualization of the DBMS with **Docker** containers.


## Knowledge

 - [Structured Query Language](https://www.sqltutorial.org/)
 - [Entinty and Relationship Diagram](https://www.geeksforgeeks.org/introduction-of-er-model/)
 - [Database Management System (DBMS) MariaDB](https://mariadb.org/documentation/)
 - [Database Administrator Dbeaver](https://dbeaver.io/download/)
 - [Virtualization with Docker](https://docs.docker.com/)


## Entity Relationship Diagram
<div align="center">
 
 [![](https://mermaid.ink/img/pako:eNqlUt9PwjAQ_leae5JkI1vXwdZnZmKIxoCaaJaQulZpYC3pOiOO_e-WDYKIb_bpu_vux3fXa6DQXAAFYSaSvRtW5gq59zjPZmi3833doFnmjKcMUVSylah-BDQ93j-pLJIc3U9Prg9miiUzVziOB0ixUlxSYRAMkCiZXJ-4CbMCvUpjlwvu4GVS7HIY50ZUBy1trnpwVNpq39_t0CSbP9zcPTvha6lW1XnMhfZzu66EWbiBrqfnfi4qK9X2N9WJ_ltuN35lma1PclGPjgL_vceOctIKIzdW6sM6WvCgFMatl7sf7prkYJfCVQDqIGdmlUOu9nGstnq-VQVQa2rhQb3ZT3O4CaBvbF0574YpoA18AiUkHSbjOAmDMcGYJKEHW6AhHgajCEeYhFFEYhKR1oMvrV2FYJimOB2RKBmlJAgCTLpyLx3Z9xRcWm1u-4Ps7rL9Br4XwDc?type=png)](https://mermaid.live/edit#pako:eNqlUt9PwjAQ_leae5JkI1vXwdZnZmKIxoCaaJaQulZpYC3pOiOO_e-WDYKIb_bpu_vux3fXa6DQXAAFYSaSvRtW5gq59zjPZmi3833doFnmjKcMUVSylah-BDQ93j-pLJIc3U9Prg9miiUzVziOB0ixUlxSYRAMkCiZXJ-4CbMCvUpjlwvu4GVS7HIY50ZUBy1trnpwVNpq39_t0CSbP9zcPTvha6lW1XnMhfZzu66EWbiBrqfnfi4qK9X2N9WJ_ltuN35lma1PclGPjgL_vceOctIKIzdW6sM6WvCgFMatl7sf7prkYJfCVQDqIGdmlUOu9nGstnq-VQVQa2rhQb3ZT3O4CaBvbF0574YpoA18AiUkHSbjOAmDMcGYJKEHW6AhHgajCEeYhFFEYhKR1oMvrV2FYJimOB2RKBmlJAgCTLpyLx3Z9xRcWm1u-4Ps7rL9Br4XwDc)
 
</div>


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
Now check which IP address the container is being used on
```docker
docker inspect id_container | grep IPAddress
```

Get the IPAddress and configure it in Dbeaver to access the database, open a script file in Dbeaver and then create, query, insert and delete information with the code that was inserted in github.
## Authors

- [@feliperasan](https://www.github.com/feliperasan)

# DockerProject

DockerProject is a site allowing to know the schools that you can have in CPGE with your grades and personal choices (region, contest,...).

## Set up

```bash
git clone https://github.com/SamirPS/DockerProject.git
cd DockerProject
docker-compose up
```

now go  http://localhost:5000.

## Project structure

This project uses : 
* **python3** container for the  Flask app.
* **postgresql** container. 
* **redis** container. 
* **mongodb** container.

The postgres database allows to store all the data of the schools for example their specialties and prices. We also have access to the different competition coefficients for each school.

Redis and mongodb allows me to retrieve the suggestions that the user can send.

All the data of database is persistant

## Connecting to databases

Connecting to the **postgresql** database :
```bash
docker exec -it db bash
root@05b3a3471f6f:/#  psql -U postgres
```
Connecting to the **redis** database :
```bash
docker exec -it redis redis-cli
```

Connecting to the **MongoDB** database :
```bash
docker exec -it mongodb mongo
```



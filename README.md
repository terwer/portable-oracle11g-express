## Building

```bash
./buildContainerImage.sh -x -v 11.2.0.2 -o "--memory=2g --memory-swap=4g"
```

## Run

```bash
docker compose up --build
```

## Getting a shell on the container
First run docker ps to get the container ID. Then run: `docker exec -it portable-oracle11g-express /bin/bash`

Or as root: `docker exec -u 0 -it portable-oracle11g-express /bin/bash`

## Run Sqlplus

```bash
docker exec -it portable-oracle11g-express /bin/sh
sqlplus sys/123456 as sysdba
```
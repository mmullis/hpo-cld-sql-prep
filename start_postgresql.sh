#!/bin/bash

docker pull postgres

mkdir -p `pwd`/pg_data_dir

docker run --name postgresql -e POSTGRES_USER=pguser -e POSTGRES_PASSWORD=pgpassword -p 5432:5432 -v `pwd`:/work_dir -v `pwd`/pg_data_dir:/var/lib/postgresql/data -d postgres

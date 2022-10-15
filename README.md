# hpo-cld-sql-prep
Prepare HP Omnicept Cognitive Load (HPO-CLD) files for loading into SQL database 

The primary use for this is project is to prepare the HPO-CLD CSV files for loading into (PostgreSQL)[https://www.postgresql.org/].

For convenience, we use [DBeaver](https://dbeaver.io/) for interactive work with the database to create tables and load the data.
All instructions are for running applications on Linux or in a compatible environment.

Install DBeaver using Flatpak
-----------------------------
```
flatpak install flathub io.dbeaver.DBeaverCommunity
```

Start PostgreSQL in Docker 
-------------------------
```
./start_postgresql.sh
```

Start DBeaver using Flatpak
---------------------------
```
flatpak run io.dbeaver.DBeaverCommunity
```
 

# hpo-cld-sql-prep
Prepare HP Omnicept Cognitive Load (HPO-CLD) files for loading into SQL database 

The primary use for this is project is to prepare the HPO-CLD CSV files for loading into (PostgreSQL)[https://www.postgresql.org/].
The HP-CLD files are NOT provided in this project. You must acquire and download them yourself using appropriate means.

For convenience, we recommend using [DBeaver](https://dbeaver.io/) for interactive work with the database to create tables and load the data.
All instructions are for running applications on Linux or in a compatible environment.

Setup HPO-CLD files
-------------------
After downloading the HPO-CLD dataset zip file, it must be unpacked in "./dataset/" for the build scripts to find the input files.

```
mkdir -p ./dataset
unzip -d dataset HPO-CLD.zip
```

Build Load Files
----------------
Run the build_load_files.sh script and it will process the HPO-CLD files to create
the database ready files we want.

Output from the build process creates new CSV files in the 'load_files' directory.
```
time ./bin/build_load_files.sh
```

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



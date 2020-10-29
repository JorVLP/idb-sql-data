# idb-sql-data
## How to install test data on dice: 
first cd into a folder you can write in (where you will keep your XX.sql files would be best), then type the following commands:
```
git clone https://github.com/JorVLP/idb-sql-data.git
python idb-sql-data/loaddata.py
```
This will load all of the test data into your psql database.
## How to update on dice: 
If you have already cloned this repo and this repo has been updated, then first cd into the idb-sql-data folder created from installation, then:
```
git pull
python loaddata.py
```

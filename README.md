# Check adress in area application

## requiment

Node.js
MySQL
a mapbox account

## make it work

This prototype will check if an adress is in a pre-selected area  
first please go on the root folder open your console and run :  
`npm install`  
then go to <https://account.mapbox.com/access-tokens/> for create your mapbox token, put this token into server.js :  
`let tokenMapbox='put_here_your_token'; //put here your token`  
then into your root folder run  
`npm start`  
into your favorite navigator go to localhost:8080  
PS: This prototype is under development and contain 3 independent parts, one for draw areas, 2 other for check is an adress is in one defined area with and without map
For the 2 checker you will need the database a backup in avaliable on the folder data for restore the database please look at :

* linux : <https://phoenixnap.com/kb/how-to-backup-restore-a-mysql-database>

* windows : <https://blog.winhost.com/using-mysqldump-to-backup-and-restore-your-mysql-databasetables/>

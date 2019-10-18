# Check adress in area application  
This application will check if an adress is in a pre-selected area  
first please go on the root folder open your console and run :  
`npm install`  
then go to https://account.mapbox.com/access-tokens/ for create your mapbox token, put this token into server.js :  
`let tokenMapbox='put_here_your_token'; //put here your token`  
then into your root folder run  
`npm start`   
into your favorite navigator go to localhost:8080  
PS: This prototype is under development localhost:8080 work as duplicate to localhost:8080/map, localhost:8080/wmap will give you the same research input without the map and the path localhost8080/drawarea will allow you to draw a polygon and get the coordinate of it.
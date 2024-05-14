## WSAA-Project
## Movies Management System 
### To run this project go to: Add URL

#### This project contains three parts:
1. Flask API
2. Front-end with three parts:
    1. html template, index.html
    2. styles.css
    3. JavaScript file script.js
3. Database, MySQL

Once the user interface URL is loaded, it activates the Ajax call which calls the Flask API. 
Flask API calls MySQL database which returns requested data or executes the requested command.
The returned data is given back to JavaScript which renders the returned data into the html page.

#### There are four HTTP methods to perform CRUD operations in RESTful APIs:
1. GET - to retrieve all the movies from the database. 
   This includes GET by ID method where we can retrieve a single movie by passing an ID in the URL.
2. POST - adds a new movie to a database, by passing the required parameters: Title, Year, Director and Rating as 
   defined in the database. 
3. PUT - for updating the contect of a single movie
4. DELETE - to delete a movie from the database
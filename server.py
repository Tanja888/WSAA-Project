# create a Flask server 
# CRUD operation

# API functionality CRUD in Restful
from flask import Flask, request, jsonify
import MySQLdb
import json


databaseDict = []
app = Flask(__name__)


def get_database_credentials():
    return MySQLdb.connect(host="tanJa888.mysql.pythonanywhere-services.com",   
                     user="tanJa888",               
                     passwd="rootroot",           
                     db="tanJa888$moviesdb")            


def execute_query(cur, queryString): 
    cur.execute(queryString)


#create an array
@app.route('/movies', methods=['GET'])
# returns all the values in the database
def get_movies():
    
    db = get_database_credentials()
    cur = db.cursor()    # cursor executes queries I need
    id = request.args.get('id')
    if id:
        databaseDict = []
        execute_query(cur, "SELECT * FROM movies WHERE movie_id={movie_id}".format(movie_id=id))
    else:
        databaseDict = []
        execute_query(cur, "SELECT * FROM movies")
        # print all the first cells of all the rows
        # for row in cur.fetchall
    for (id, name, year, director, rating) in cur.fetchall():
        databaseDict.append({'id': id, 'title':name, 'year':year, 'director':director, 'rating': float(rating)}) #adds values in the dictionary

    db.close()
    return json.dumps(databaseDict)


# adding a new movie to a database
@app.route('/movies', methods=['POST'])
def post():
    db = get_database_credentials()
    cur = db.cursor()

    data = request.json
    execute_query(cur, "INSERT INTO movies(title, year_of_release, director, rate) VALUES('{movie_name}', {year}, '{director}', {rating})"
                .format(movie_name=data['title'], year=data['year'], director=data['director'], rating=data['rating']))
    db.commit()
    db.close()
    return jsonify({"status": "Movie added"}), 201


# update the name of the id that is passed
@app.route('/movies/<int:id>', methods=['PUT']) 
def put(id):
    
    db = get_database_credentials()
    cur = db.cursor()

    data = request.json
    execute_query(cur, "UPDATE movies SET title = '{movie_name}', year_of_release = {year}, director = '{director}', rate={rating} WHERE movie_id = {movie_id}"
                .format(movie_name=(data['title']), year=data['year'], director=(data['director']), rating=data['rating'], movie_id = id))
    db.commit()
    db.close()
    return jsonify({"status": "Movie updated"}), 200


# delete the name of the id that is passed from the db
@app.route('/movies/<int:id>', methods=['DELETE'])      
def delete(id):
    db = get_database_credentials()
    cur = db.cursor()

    execute_query(cur, "DELETE FROM movies WHERE movie_id = {movie_id}".format(movie_id = id))
    db.commit()
    db.close()
    return jsonify({"status": "Book deleted"}), 200


if __name__ == "__main__":
    app.run(debug=True, port=5002)
from flask import Flask, request   # add request to import
from pymongo import MongoClient    # only if you are using MongoDB

app = Flask(__name__)

# MongoDB setup (example)
client = MongoClient("mongodb://localhost:27017/")
db = client["your_database"]
collection = db["todo_collection"]

#  Home route
@app.route('/')
def home():
    return "Assignment 4 Flask App Running"

#  Todo submission route
@app.route('/submittodoitem', methods=['POST'])
def submit_todo():
    itemName = request.form['itemName']
    itemDescription = request.form['itemDescription']
    collection.insert_one({
        "itemName": itemName,
        "itemDescription": itemDescription
    })
    return "Todo Item Saved"

#  Run the app
if __name__ == '__main__':
    app.run(debug=True)

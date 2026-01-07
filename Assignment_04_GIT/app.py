from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Assignment 4 Flask App Running"

if __name__ == '__main__':
    app.run(debug=True)

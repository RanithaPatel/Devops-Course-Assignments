#!/bin/bash
yum update -y
yum install python3 -y
pip3 install flask

cat <<EOF > app.py
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Flask Backend Running"

app.run(host='0.0.0.0', port=5000)
EOF

python3 app.py &

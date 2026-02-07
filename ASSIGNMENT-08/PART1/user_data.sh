#!/bin/bash
yum update -y

# Install Python
yum install python3 -y
pip3 install flask

# Install Node.js
curl -fsSL https://rpm.nodesource.com/setup_16.x | bash -
yum install nodejs -y

# Flask App
mkdir /flask
cat <<EOF > /flask/app.py
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Flask Backend Running"

app.run(host='0.0.0.0', port=5000)
EOF

python3 /flask/app.py &

# Express App
mkdir /express
cd /express
npm init -y
npm install express

cat <<EOF > index.js
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Express Frontend Running');
});

app.listen(3000, () => console.log('Express running on port 3000'));
EOF

node index.js &

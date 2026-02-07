#!/bin/bash
curl -sL https://rpm.nodesource.com/setup_18.x | bash -
yum install nodejs -y

mkdir app && cd app
npm init -y
npm install express

cat <<EOF > index.js
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Express Frontend Running');
});

app.listen(3000);
EOF

node index.js &

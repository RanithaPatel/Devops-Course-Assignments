const express = require("express");
const bodyParser = require("body-parser");
const axios = require("axios");

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));

app.get("/", (req, res) => {
  res.send(`
    <form method="POST" action="/submit">
      <input name="name" placeholder="Enter your name"/>
      <button type="submit">Send</button>
    </form>
  `);
});

app.post("/submit", async (req, res) => {
  const response = await axios.post("http://backend:5000/submit", {
    name: req.body.name
  });
  res.send(response.data.message);
});

app.listen(3000, () => {
  console.log("Frontend running on port 3000");
});

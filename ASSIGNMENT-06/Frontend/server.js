const express = require("express");
const axios = require("axios");

const app = express();

app.get("/", async (req, res) => {
  try {
    const response = await axios.get("http://localhost:5000/api");
    res.send(`
      <h2>Express Frontend</h2>
      <p>Response from Flask Backend:</p>
      <pre>${JSON.stringify(response.data, null, 2)}</pre>
    `);
  } catch (error) {
    res.send(" Unable to connect to Flask Backend");
  }
});

app.listen(3000, () => {
  console.log("Express running on port 3000");
});

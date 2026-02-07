const express = require("express");

const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
  res.send("Frontend is running successfully!");
});

app.get("/api", async (req, res) => {
  res.json({ message: "Connected to backend successfully" });
});

app.listen(PORT, () => {
  console.log(`Frontend running on port ${PORT}`);
});

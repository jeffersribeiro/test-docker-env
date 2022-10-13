require("dotenv/config");

const express = require("express");

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

const { PORT } = process.env;

app.listen(PORT, () => {
  console.log(`server started at port: ${PORT}`);
});

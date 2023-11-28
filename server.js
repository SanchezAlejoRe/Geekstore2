const express = require("express");
const app = express();
const mysql = require("mysql");
const myconn = require("express-myconnection");
require('dotenv').config(); // Agrega esta línea para cargar las variables de entorno desde el archivo .env

app.set("port", process.env.PORT || 9000);

const dbOptions = {
  host: process.env.DB_HOST || "",
  port: process.env.DB_PORT || 3306,
  user: process.env.DB_USER || "",
  password: process.env.DB_PASSWORD || "",
  database: process.env.DB_DATABASE || "",
};

// middlewares
app.use(myconn(mysql, dbOptions, "single"));

// rutas
app.get("/", (req, res) => {
  res.send("Bienvenido a mi Api");
});

// server corriendo
app.listen(app.get("port"), () => {
  console.log("El servidor está corriendo en el puerto", app.get("port"));
});

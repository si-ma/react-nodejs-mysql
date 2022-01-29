const express = require('express');
const app = express();
const mysql = require('mysql')
const config = require('./config/mysql.js')

const port = 3000;

const connection = mysql.createConnection(config.mysqlConfig);

app.get('/user', (req, res) => {
    connection.query("SELECT * FROM users", (error, results) => {
        console.log(error);
        console.log(results);

        res.json(results);
    })
});

app.listen(port, () => console.log(`Server running on port ${port}`));
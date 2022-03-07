const pool = require('./db/db');
const express = require('express');
const path =require('path');
const port = process.env.PORT || 8008;

const app = express();
require('./midlwares/initMidllwares')(app);
require('./routers/initRouter')(app);
app.use('/uploads', express.static('uploads'));

async function startServer() {
    await pool.connect(function (err) {
        if (err) {
            console.log("Can't connect to database");
            console.error(err);
        } else {
            console.log("Database connected!");
            app.listen(port, () => {
                console.log("server stardet at " + port);

            });
        }
    });

}

startServer();

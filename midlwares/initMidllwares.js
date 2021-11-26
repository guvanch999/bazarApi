const bodyparser=require('body-parser');
const express=require('express');
//const path=require('path');
const logM=require('./logInf');
const languageChacker=require('./languageChecker');
const urlParser=require('./queryConvertor');
module.exports = (app)=>{
    app.use(bodyparser.json());

    app.use(
        bodyparser.urlencoded({
            extended: true,
        }));
    app.use(
        express.urlencoded({
            extended: true
        })
    )
    app.use(express.static(__dirname))
    app.use(express.json());
    app.use('/',logM);
    app.use('/',languageChacker);
    app.use('/',urlParser);
    console.log('Midllwares are inserted successfully');
    return app;
}

const sender = require('../utils/sendRespond')
const queries = require('../sqlqueries/newsQueries')
const {queryExequterWithThenBlock} = require("../utils/promisiFunctions");
module.exports = {
    async getAllNews(req,res){
        let {page}=req.body;
        let offset=page?(page-1)*20:0;
    }
}
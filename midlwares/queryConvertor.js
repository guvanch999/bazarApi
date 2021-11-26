const url = require('url');
module.exports=async  (req,res,next)=>{
    var url_parts = url.parse(req.url, true).query;
    req.url_queries=url_parts;
    next();
}
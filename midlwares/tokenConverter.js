const language = require("../utils/lang");
const jwt = require("jsonwebtoken");
module.exports=(req,res,next)=>{
    const token=req.header('auth-token');
    // req.auth=true;
    // req.user= {
    //     user_id:1
    // };
    // next();
    if(!token)
    {
        req.auth=false;
    }
    try{
        const verified=jwt.verify(token,process.env.TOKEN_KEY);
        req.auth=true;
        req.user=verified;
    }catch(err)
    {
        req.auth=false;
    }
    next();
}
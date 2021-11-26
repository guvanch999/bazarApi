const jwt=require('jsonwebtoken');
const pool=require('../db/db');
const language=require('../utils/lang');

exprorts.VerifyToken=async (req,res,next)=>{
    const token=req.header('auth-token');
    if(!token)return res.status(401).json({
        success:false,
        message:req.lang==='ru'?language.MsgRuFlags.ERROR_TOKEN:language.MsgTmFlags.ERROR_TOKEN
    });
    try{
        const verified=jwt.verify(token,process.env.TOKEN_KEY);
        req.user=verified;

    }catch(err)
    {
        console.log(err);
        return res.status(401).json({
            success:false,
            message:req.lang==='ru'?language.MsgRuFlags.ERROR_TOKEN:language.MsgTmFlags.ERROR_TOKEN
        });
    }

}
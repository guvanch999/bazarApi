module.exports =async (req,res,next)=>{
   // console.log(req);
    console.log(req.method," ",req.url);
    console.log(req.body);
    next();
}
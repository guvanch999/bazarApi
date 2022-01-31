module.exports =async (req,res,next)=>{
    var lang=req.header('language');
    if(lang==='ru'||lang==='tm'){
        req.lang=lang;
    } else {
        req.lang='tm';
    }
    next();
}
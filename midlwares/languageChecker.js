module.exports =async (req,res,next)=>{
    var lang=req.header('language');
    if(!lang){
        return res.status(400).json({
            success:false,
            message:"No language detected"
        })
    }
    if(lang==='ru'||lang==='tm'){
        req.lang=lang;
        next();
    } else {
        return res.status(400).json({
            success: false,
            message: "Invalid params for language"
        });
    }
}
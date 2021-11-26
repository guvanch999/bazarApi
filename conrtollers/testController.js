const sendRespond=require('../utils/sendRespond');
var getSuccess=async (req,res)=>{
    sendRespond.sendSuccess(res,req.lang);
};
var getInternalServerError=async (req,res)=>{
      sendRespond.sendRespondInternalSErr(res,req.lang);
}
var getInvalidParams=async (req,res)=>{
      sendRespond.sendRespondInvalidParams(res,req.lang);
}
module.exports = {
    getSuccess,
    getInternalServerError,
    getInvalidParams
}
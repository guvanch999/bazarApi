const sendRespond=require('../utils/sendRespond');
const {queryExequterWithThenBlock} = require("../utils/promisiFunctions");
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
    getInvalidParams,
    async createBonusAction(req,res){
        return await queryExequterWithThenBlock('insert into bonus set ?, mohleti=now(),doredilen_wagty=now()',[req.body])
            .then(result=>{
                return sendRespond.sendSuccess(res,result)
            }).catch(err=>{
                console.log(err)
                return sendRespond.sendRespondInternalSErr(res,req.lang)
            })
    },
    async createArzanladysh(req,res){
        return await queryExequterWithThenBlock('insert into arzanladysh_kart set ?, srok_date=now(),doredilen_wagty=now()',[req.body])
            .then(result=>{
                return sendRespond.sendSuccess(res,result)
            }).catch(err=>{
                console.log(err)
                return sendRespond.sendRespondInternalSErr(res,req.lang)
            })
    }
}
const queies=require('../sqlqueries/sms_apps_queries')
const sender =require('../utils/sendRespond')
module.exports = {
    async registerSMSApp(req,res){
        let body=req.body;
        if(!body.name || !body.device_token){
            return sender.sendRespondInvalidParams(res,req.lang)
        }
        let succ=await queies.registerSMSApp(body);
        if(!succ){
            return sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,{registered:true,id:succ})
    },
    async deleteSMSApp(req,res){
      let _id=req.params.id;
      if(!_id){
          return sender.sendRespondInvalidParams(res,req.lang)
      }
      let succ=await queies.deleteSMSApp(_id)
        if(!succ){
            return sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,{unRegistered:true})
    }
}
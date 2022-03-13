const queries=require('../sqlqueries/serviceShops');
const sender=require('../utils/sendRespond');

module.exports={
   async getAllServices(req,res){
       let list=await queries
           .getAllserviceShops()
       if(!list){
           return sender.sendRespondInternalSErr(res,req.lang)
       }
       return  sender.sendSuccess(res,list)
   }
}
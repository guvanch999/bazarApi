const queries=require('../sqlqueries/adresesQueriws');
const sender=require('../utils/sendRespond');

module.exports={
    async getWelayatlar(req,res){
        let welayatlar= await queries.getAllWelayatlar();
        if(!welayatlar){
            return sender.sendRespondInternalSErr(res,req.lang)
        }

        return  sender.sendSuccess(res,welayatlar)
    },
    async createAdressUser(req,res){
        let {name,adress_welayat_id}=req.body;
        if(!name || !adress_welayat_id){
            return sender.sendRespondInvalidParams(res,req.lang)
        }
        let succ=await queries.createAdress(req.body)
        if(!succ){
            return sender.sendRespondInternalSErr(res,req.lang)
        }
        return  sender.sendSuccess(res,{success:true})
    },
    async getAllAdresess(req,res){
        let list= await queries.getallAdreses();
        if(!list){
            return sender.sendRespondInternalSErr(res,req.lang)
        }

        return  sender.sendSuccess(res,list)
    }
}
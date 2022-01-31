const pool=require('../db/db');
const queries=require('../sqlqueries/abunalar');
const sender=require('../utils/sendRespond');


var getAllFollows=async (req,res)=>{
    let _id=0;
    try {
        let followShops= await pool.query(queries.GETALLFOLLOWSHOPS,[_id]);
        let followServices=await pool.query(queries.GETALLFOLLOWSERVICES,[_id]);
        return sender.sendSuccess(res,{
            followShops,
            followServices
        })
    }catch (err){
        console.log(err);
        return sender.sendRespondInternalSErr(res,req.lang);
    }
}
var getLentaList=async (req,res)=>{
    let user_id=0;
    try{
        let shops=await pool.query(queries.GETALLFOLLOWSHOPS,[user_id]);
        let services=await pool.query(queries.GETALLFOLLOWSERVICES,[user_id]);
        return sender.sendSuccess(res,{
            shops,
            services
        });
    }catch (err){
        console.log(err);
        return sender.sendRespondInternalSErr(res,req.lang);
    }
}
var unfollowUser=async (req,res)=>{
    let user_id=0;
    let shop_id=0;
    await pool.query(queries.GETFOLLOWFORCHECK,[user_id,shop_id]).then(
       async (result)=> {
           if(result.length>0){
                   let follow_id=result[0].id;
                   return await pool.query(queries.UNFOLLOW,[follow_id]);
           }
           else {
               return []
           }
       }
    ).then((arr)=>{
                if(arr.length>0){
                    return  sender.sendSuccess(res,arr);
                } else {
                    return sender.sendRespondInvalidParams(res,req.lang);
                }

        }
    ).catch(err=>{
        console.log(err);
        return sender.sendRespondInternalSErr(res,req.lang);
    })
}


module.exports={
    getAllFollows,
    getLentaList,
    unfollowUser
}
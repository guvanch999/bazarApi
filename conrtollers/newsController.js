const sender = require('../utils/sendRespond')
const queries = require('../sqlqueries/newsQueries')
const {queryExequterWithThenBlock} = require("../utils/promisiFunctions");
module.exports = {
    async getAllNews(req,res){
        let {page}=req.body;
        let offset=page?(page-1)*20:0;
        return queryExequterWithThenBlock(queries.GET_ALL_NEWS({offset}))
            .then(async rows=>{
                for(let i=0;i<rows.length;i++) {
                    let news_photos=await queryExequterWithThenBlock(queries.GET_NEWS_IMAGES,[rows[i].id])
                    rows[i]["photos"]=news_photos.map(x=>x.photo)
                }
                return sender.sendSuccess(res,rows)
            }).catch(err=>{
                console.log(err)
                return sender.sendRespondInternalSErr(res,req.lang)
            })
    },
    async getNewsById(req,res){
        let {id}=req.params;
        if(!id){
            return sender.sendRespondInvalidParams(res,req.lang)
        }
        return await queryExequterWithThenBlock(queries.GET_NEWS_DETAIL,[id])
            .then(rows=>{
                if(rows.length){
                    return rows[0]
                } else {
                    return false
                }
            })
            .then(async data=>{
                if(data){
                    let news_photos=await queryExequterWithThenBlock(queries.GET_NEWS_IMAGES,[data.id])
                    data["photos"]=news_photos.map(x=>x.photo)
                    if(data.shop_id){
                        let shopDetail=await queryExequterWithThenBlock(queries.GET_SHOP_DETAIL,[data.shop_id,data.shop_id]);
                        data['shopDetail']=shopDetail
                    } else {
                        let shopDetail=await queryExequterWithThenBlock(queries.GET_SERVICE_DETAIL,[data.service_shop_id,data.service_shop_id]);
                        data['shopDetail']=shopDetail
                    }
                    return sender.sendSuccess(res,data)
                } else
                {
                    return sender.sendRespondInvalidParams(res,req.lang)
                }
            })
            .catch(err=>{
                console.log(err)
                return sender.sendRespondInternalSErr(res,req.lang)
            })

    }

}
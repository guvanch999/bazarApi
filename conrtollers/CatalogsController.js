const pool=require('../db/db');
const queries=require('../sqlqueries/CayalogsQueries');
const sender=require('../utils/sendRespond');
const promiseExecuter=require('../utils/promisiFunctions')
var getShopCatalogs=async (req,res)=>{
    var _bid=req.params.b_id;
    var _sid=req.params.s_id;
    if(_sid==undefined || _bid==undefined){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.KATALOGSOFSHOP({
        shop_id:_sid,
        bolum_id:_bid
    }),
        (err,rows)=>{
        if(err){
            console.log(err);
            return  sender.sendRespondInternalSErr(res,req.lang);
        }
        return sender.sendSuccess(res,rows);
    })
}
var getAllCatalogs=async (req,res)=>{
    let _params=req.url_queries;

        _params.verify=_params.verify==='0'?0:1;
    console.log(_params);

    await promiseExecuter.queryExequterWithThenBlock(queries.GETCATALOGSWITHFILTER(_params)).then(async  (rows)=>{
        let _includes=[];
        if(_params.include){
            _includes=_params.include.split(',');
            for(let i=0;i<rows.length;i++){
                let _tableName='';
                for(let j=0;j<_includes.length;j++){
                    _tableName=_includes[j];
                    await promiseExecuter.queryExequterWithThenBlock(queries.GETTABLEPARAMS({tableName:_tableName,id:rows[i].id}))
                        .then(result=>{
                            rows[i][_tableName]=result
                        })
                        .catch(err=>{
                            console.log(err);
                            rows[i][_tableName]=null;
                        })
                }
            }
            return sender.sendSuccess(res,rows);
        } else
        return sender.sendSuccess(res,rows);
    }).catch(err=>{
        console.log(err);
        return sender.sendRespondInternalSErr(res,req.lang);
    })
}
var getCategoriesForCatalog=async (req,res)=>{
    let catalog_id=req.params.k_id||null;
    if(catalog_id==null){
        return sender.sendRespondInvalidParams(res,req.lang);
    }
    await pool.query(queries.CATEGORIESFORKATALOG({catalog_id:catalog_id})).then((rows)=>{
        return sender.sendSuccess(res,rows);
    }).catch((err)=>{
        console.log(err);
        return sender.sendRespondInternalSErr(res,req.lang);
    })
}


module.exports = {
    getShopCatalogs,
    getAllCatalogs,
    getCategoriesForCatalog
}
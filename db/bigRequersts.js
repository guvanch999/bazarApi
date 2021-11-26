const pool=require('./db');
const queries=require('../sqlqueries/homeQueries');
const shopQueries=require('../sqlqueries/shopQueries');
const {use} = require("express/lib/router");

let getadsSHopsForSecondPage= async ()=>{
    await pool.query(queries.ADSFROMSHOP).then( async (adslist)=>{
        let resultList=[];
        for(let i=0;i<adslist.length;i++){
            let temp=Object.assign({},adslist[i]);
            if(temp.is_product){
                let shopDetail = await pool.query(queries.SHOPDETAILSPhotoAndname({ id:temp.shop_id}));
                let productDetail=await pool.query(queries.DETAILSFULL({id:temp.product_id}));
                Object.assign(temp,{
                    shopDetail:shopDetail,
                    productDetail:productDetail
                });
            } else {
                let shopDetail = await pool.query(queries.SERVICESHOPS({ id:temp.shop_id}));
                let productDetail=await pool.query(queries.SERVICEPRODUCTDETAIL({id:temp.product_id}));
                Object.assign(temp,{
                    shopDetail:shopDetail,
                    productDetail:productDetail
                });
            }
            resultList.push(temp);
        }
        return resultList;
    }).catch((err)=>{
        console.log(err);
        return false;
    })

}

var getShopsWithChecking=async (katalog_id,user_id)=>{
        await pool.query(shopQueries.KATALOGSHOPS({katalog_id:katalog_id})).then(async(rows)=>{
            let resultList=[];
            for(let i=0;i<rows.length;i++){
                let temp=Object.assign({},rows[i]);
                let sgop_images=await pool.query(shopQueries.KSHOPIMAGES({shop_id:temp.shop_id}));
                let chekFollow=await pool.query(shopQueries.CHECKFOLLOW({user_id:user_id,shop_id:temp.shop_id}));
                let followCount=await pool.query(shopQueries.COUNTOFFOLLOWERS({shop_id:temp.shop_id}));
                let productCount=await pool.query(shopQueries.COUNTOFPRODUCTS({shop_id:temp.shop_id}));
                Object.assign(temp,{
                    shop_images:sgop_images,
                    isFollowing:chekFollow,
                    followCount,
                    productCount
                })
                resultList.push(temp);
            }
            return resultList;

        }).catch(err=>{
            console.log(err);
            return false;
        })

}
module.exports={
    getadsSHopsForSecondPage,
    getShopsWithChecking
}
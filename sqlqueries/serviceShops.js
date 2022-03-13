const pool =require('../utils/promisiFunctions')
module.exports={
    async getAllserviceShops(){
        return await pool.queryExequterWithThenBlock('select * from service_shops')
            .then(rows=>{
                return rows
            }).catch(err=>{
                console.log(err)
                return false;
            })
    }
}
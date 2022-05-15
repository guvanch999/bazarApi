const pool = require('../db/db');
const queries = require("../sqlqueries/productsQuery");
module.exports = {
    queryExequterWithThenBlock(sqlQuery,data=null) {
        return new Promise(async (resolve, reject) => {
            if(data){
                await pool.query(sqlQuery,data, (err, rows) => {
                    if (err) {
                        reject(err)
                    } else {
                        resolve(rows)
                    }
                })
            } else {
                await pool.query(sqlQuery, (err, rows) => {
                    if (err) {
                        reject(err)
                    } else {
                        resolve(rows)
                    }
                })
            }

        })
    },

}
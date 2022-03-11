const pool = require('../db/db');
const queries = require("../sqlqueries/productsQuery");
module.exports = {
    queryExequterWithThenBlock(sqlQuery) {
        return new Promise(async (resolve, reject) => {
            await pool.query(sqlQuery, (err, rows) => {
                if (err) {
                    reject(err)
                } else {
                    resolve(rows)
                }
            })
        })
    },

}
const queryExequter = require('../utils/promisiFunctions')
module.exports = {
    async getAllWelayatlar() {
        return await queryExequter.queryExequterWithThenBlock('select * from adress_welayat')
            .then(result => {
                return result
            }).catch(err => {
                console.log(err)
                return false
            })
    },
    async createAdress(data) {
        return await queryExequter.queryExequterWithThenBlock(`insert into adress(name,adress_welayat_id) values('${data.name}',${data.adress_welayat_id})`)
            .then(result => {
                return true
            }).catch(err => {
                console.log(err)
                return false;
            })
    },
    async getallAdreses() {
        return await queryExequter.queryExequterWithThenBlock('select * from adress')
            .then(rows => {
                return rows
            }).catch(err => {
                console.log(err)
                return false
            })
    }
}


const queryExequter = require('../utils/promisiFunctions')
const {result} = require("../node_modulestemp/lodash/object");
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
    },
    async createAddressForUser(data) {
        return await queryExequter.queryExequterWithThenBlock('insert into user_adress set ?', [data])
            .then(rows => {
                return rows.insertId
            }).catch(err => {
                console.log(err)
                return false;
            })
    },
    async getAllUserAddreses(id) {
        return await queryExequter.queryExequterWithThenBlock('select ua.*,a.name as adressname,aw.name as welayatname from user_adress ua inner join adress a on a.id=ua.adress_id inner join adress_welayat aw on aw.id=a.adress_welayat_id where user_id=' + id)
            .then(rows => {
                return rows
            }).catch(err => {
                console.log(err)
                return false
            })
    },
    async deleteAddressById(id) {
        return await queryExequter.queryExequterWithThenBlock(`delete from user_adress where id=${id}`)
            .then(() => {
                return true
            }).catch(err => {
                return false
            })
    }
}


const {queryExequterWithThenBlock} = require("../utils/promisiFunctions");

module.exports = {
    async registerSMSApp(data) {
        return await queryExequterWithThenBlock(`insert into sms_apps(device_name,fcm_token) values('${data.name}','${data.device_token}')`)
            .then(() => {
                return true
            }).catch(err => {
                console.log(err)
                return false
            })
    },
    async getSMSAppById(id) {
        return await queryExequterWithThenBlock(`select * from sms_apps where id=${id}`)
            .then(result => {
                if (result && result.length) {
                    return result[0]
                }
            }).catch(err => {
                console.log(err)
                return false;
            })
    },
    async deleteSMSApp(id) {
        return await queryExequterWithThenBlock(`delete from sms_apps where id=${id}`)
            .then(() => {
                return true
            }).catch(err => {
                console.log(err)
                return false;
            })
    },
    async getAllSMSApps() {
        return queryExequterWithThenBlock(`select * from sms_apps`)
            .then(rows => {
                    return rows
                }
            ).catch(err => {
                console.log(err)
                return false
            })
    }
}
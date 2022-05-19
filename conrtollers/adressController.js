const queries = require('../sqlqueries/adresesQueriws');
const sender = require('../utils/sendRespond');
const {validationResult} = require("express-validator");

module.exports = {
    async getWelayatlar(req, res) {
        let welayatlar = await queries.getAllWelayatlar();
        if (!welayatlar) {
            return sender.sendRespondInternalSErr(res, req.lang)
        }

        return sender.sendSuccess(res, welayatlar)
    },
    async createAdressUser(req, res) {
        let {name, adress_welayat_id} = req.body;
        if (!name || !adress_welayat_id) {
            return sender.sendRespondInvalidParams(res, req.lang)
        }
        let succ = await queries.createAdress(req.body)
        if (!succ) {
            return sender.sendRespondInternalSErr(res, req.lang)
        }
        return sender.sendSuccess(res, {success: true})
    },
    async getAllAdresess(req, res) {
        let welayatlar=await queries.getAllWelayatlar();
        let list = await queries.getallAdreses();
        if (!list || !welayatlar) {
            return sender.sendRespondInternalSErr(res, req.lang)
        }
        let addresses=welayatlar.map(x=>{
            let childs=list.filter(a=>a.adress_welayat_id===x.id);
            return Object.assign(x,{childs})
        })
        return sender.sendSuccess(res,addresses)
    },
    async getUserAddresses(req, res) {
        let list = await queries.getAllUserAddreses(req.user.user_id);
        if (list) {
            return sender.sendSuccess(res, list)
        }
        return sender.sendRespondInternalSErr(res, req.lang)
    },
    async createAddressForUser(req, res) {
        const errors = validationResult(req)
        if (!errors.isEmpty()) {
            return sender.sendRespondInvalidParams(res, req.lang, errors);
        }
        let data = req.body;
        console.log(req.user)
        data['user_id'] = req.user.user_id
        let succ = await queries.createAddressForUser(data)
        if (succ) {
            return sender.sendSuccess(res, {insertId: succ})
        }
        return sender.sendRespondInternalSErr(res, req.lang)
    },
    async updateAddressForUser(req, res) {
        const errors = validationResult(req)
        if (!errors.isEmpty()) {
            return sender.sendRespondInvalidParams(res, req.lang, errors);
        }
        let data = req.body;
        let succ = await queries.updateAddressForUser(data,req.params.id)
        if (succ) {
            return sender.sendSuccess(res, {insertId: succ})
        }
        return sender.sendRespondInternalSErr(res, req.lang)
    },
    async deleteAdressForUser(req, res) {
        let succ = await queries.deleteAddressById(req.params.id);
        if (succ) {
            return sender.sendSuccess(res, {isDeleted: true})
        }
        return sender.sendRespondInternalSErr(res, req.lang)
    },

}
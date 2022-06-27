var admin = require("firebase-admin");

var serviceAccount = require("./mykey.json");
var sellerAccount = require("./sellershop.json")
const _smsAppPushApp = admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});
const _sellersPushApp = admin.initializeApp({
  credential: admin.credential.cert(sellerAccount)
}, 'sellerApp')

module.exports = {_smsAppPushApp, _sellersPushApp};
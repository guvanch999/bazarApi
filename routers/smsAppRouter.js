const router=require('express').Router();
const controller=require('../conrtollers/smsAppController');

router.post('/public/sms-senders/register',controller.registerSMSApp)
router.delete('/public/sms-senders/unregister/:id',controller.deleteSMSApp)

module.exports = router;
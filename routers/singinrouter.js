const router = require('express').Router();
const controller = require('../conrtollers/singincontroller');
const auth = require('../midlwares/authToken')
router.post('/postcode', controller.PostCode);
router.post('/verificode', controller.verificationCode);
router.post('/finish', controller.finishsingup);
router.put('/update-user-data/:id', controller.updateUserDatas);
router.get('/all-users', controller.getAllUsers)
router.post('/login-verify', controller.loginFunction);
router.post('/check-registred', controller.checkNumberFunction);

router.get('/add-view-count/:id', controller.increaseViewCount)

module.exports = router;
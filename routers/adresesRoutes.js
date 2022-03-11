const router=require('express').Router();
const controller=require('../conrtollers/adressController');

router.get('/welayatlar',controller.getWelayatlar);


router.get('/adresess',controller.getAllAdresess);
router.post('/adress',controller.createAdressUser);

module.exports = router;
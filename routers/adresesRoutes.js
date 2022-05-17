const router=require('express').Router();
const controller=require('../conrtollers/adressController');
const authToken=require('../midlwares/authToken')
const {body} = require("express-validator");
router.get('/welayatlar',controller.getWelayatlar);


router.get('/adresess',controller.getAllAdresess);
router.post('/adress',controller.createAdressUser);

router.use(authToken.VerifyToken);
router.get('/my-addresses',controller.getUserAddresses);
router.post('/create-address',
    body('name')
        .trim()
        .isLength({min:2})
        .withMessage('Ady 3 harpdan kop bolmaly'),
    body('phone')
        .trim()
        .isLength({min:3})
        .withMessage("Nomer 3 harpdan kop bolmaly"),
    body('adress_id')
        .isNumeric()
        .withMessage("Adres belgisi nqdogry"),
    body('adress_koche')
        .trim()
        .isLength({min:1})
        .withMessage("Koce 1 harpdan kop bolmaly"),
    controller.createAddressForUser)
router.delete('/remove-address/:id',
    controller.deleteAdressForUser)

module.exports = router;
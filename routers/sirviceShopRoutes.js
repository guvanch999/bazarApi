const router=require('express').Router();
const controller=require('../conrtollers/servicesController');

router.get('/all-serices',controller.getAllServices)

module.exports = router;
const router=require('express').Router();
const controller=require('../conrtollers/newsController');
const auth=require('../midlwares/authToken')

router.get('/all-news',controller.getAllNews)
router.get('/detail/:id',controller.getNewsById)

module.exports = router
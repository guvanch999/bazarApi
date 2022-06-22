const router = require('express').Router();
const controller = require('../conrtollers/newsController');
const auth = require('../midlwares/authToken')

router.get('/all-news', controller.getAllNews)
router.get('/detail/:id', controller.getNewsById)

router.get('/my-follows', auth.VerifyToken, controller.getMyFollowShops)
router.get('/my-follow-lenta', auth.VerifyToken, controller.getShopLentas)

router.get('/all-videos', controller.getAllVideos)


router.get('/all-saylanan', controller.getAllSaylanan)
router.post('/get-all-saylanan-items/:id',auth.VerifyToken, controller.getSaylananProductsList)


module.exports = router
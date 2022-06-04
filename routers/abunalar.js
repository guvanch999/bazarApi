const router=require('express').Router();
const controller=require('../conrtollers/abunalarController');
const auth=require('../midlwares/authToken')
router.get('/getallfollows',controller.getAllFollows);
router.get('/getfollowlist',controller.getLentaList);


router.delete('/unfollow-me/:user_id/:shop_id',controller.unfollowUser)
router.use(auth.VerifyToken);
router.post('/follow-me',controller.followShops);
router.post('/rate',controller.addRatingFromMe)
module.exports=router;
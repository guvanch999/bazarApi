const router=require('express').Router();
const controller=require('../conrtollers/abunalarController');

router.get('/getallfollows',controller.getAllFollows);
router.get('/getfollowlist',controller.getLentaList);


router.delete('/unfollow-me/:user_id/:shop_id',controller.unfollowUser)

module.exports=router;
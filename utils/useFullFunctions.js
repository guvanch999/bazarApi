const admin = require('../utils/firebase-config')._sellersPushApp;
const {queryExequterWithThenBlock} = require("./promisiFunctions");
const notification_options = {
    priority: "high",
    timeToLive: 60 * 60 * 24
};
module.exports = {
    calculateRating(ratings) {
        let fiveStar = 0, fourStar = 0, threeStar = 0, twoStar = 0, oneStar = 0, jem = 0;
        for (let i = 0; i < ratings.length; i++) {
            switch (ratings[i].rating_count) {
                case 1: {
                    oneStar++;
                    jem += 1
                    break;
                }
                case 2: {
                    twoStar++
                    jem += 2
                    break;
                }
                case 3: {
                    threeStar++;
                    jem += 3
                    break;
                }
                case 4: {
                    fourStar++;
                    jem += 4
                    break;
                }
                case 5: {
                    fiveStar += 1
                    jem += 5
                    break;
                }
            }
        }
        let rating = jem / ratings.length || 0;
        return {rating, ratingList: [oneStar, twoStar, threeStar, fourStar, fiveStar]}
    },
    async sentNewOrderNotificationToShop(shop_id) {
        const payload = {
            notification: {
                title: "Täze sargyt!",
                body: "Üns beriň täze sargyt geldi.",
            },
        };
        const options = notification_options;
        return await queryExequterWithThenBlock(`select * from shop_service_tokens where shop_id=${shop_id}`)
            .then(async rows => {
                rows = rows.map(x => x.token);
                return await admin.messaging().sendToDevice(rows, payload, options)
            }).then(async (response) => {
                return true
            })
            .catch(err => {
                console.log(err)
                return false
            })
    }
}

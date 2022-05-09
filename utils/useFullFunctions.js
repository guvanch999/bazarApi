
module.exports = {
    calculateRating(ratings){
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
        return {rating,ratingList:[oneStar,twoStar,threeStar,fourStar,fiveStar]}
    }
}

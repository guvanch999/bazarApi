module.exports = {
    DETAILSFULL: (params) => `select p.*,c.color_name,c.name_in_ru as color_nameRU,c.cod_web,s.shop_name,s.photo as shop_photo,s.phones as shop_phones from product p left join colors c on c.id=p.colors_id left join shop s on s.id=p.shop_id where p.id=${params.id}`,
    SHOPPRODUCTCOUNT: (shop_id) => `select count(*) as total from product where id=${shop_id}`,
    PRODUCTIMAGES: (product_id) => `select * from product_photo where product_id=${product_id}`,
    SELECT_RATING_OF_PRODUCT: `select * from rating_products where product_id=?`,
    PRODUCTSIZE: (params) => `select sz.* from size s inner join sizes sz on s.sizes_id=sz.id where s.product_id=${params.id}`,

    //product detailda color maglumatlaryny ugratmaly
    GETPRODUCTSBYFILTERANDSEARCH: (params) => {
        let s = `select * from product  where verify=${params.verify} `
        let hasBolumId=false;
        if (params.filter) {
            params.filterValues.forEach(filter => {
                console.log(filter);
                if(filter.key==='bolum_id')hasBolumId=true;
                s += ` and ${filter.key} = '${filter.value}' `
            })
        }
        if (params.query) {
            s += ` and UPPER(concat(description,descriptionRU,product_name,product_nameRU)) like UPPER('%${params.query}%') `
        }
        if(hasBolumId)s+='  order by RAND()  '
        s += ` limit ${params.offset}, ${params.limit}`

        console.log(s);
        return s;
    },
    GETPRODUCTSBYFILTERANDSEARCHCOUNT: (params) => {
        let s = `select count(*) as total from product  where verify=${params.verify} `

        if (params.filter) {
            s += ``
            params.filterValues.forEach(filter => {
                console.log(filter);
                s += ` and ${filter.key} = '${filter.value}' `
            })
        }
        if (params.query) {
            s += ` and UPPER(concat(description,descriptionRU,product_name,product_nameRU)) like UPPER('%${params.query}%') `
        }
        console.log(s);
        return s;
    },
    SELECTSFROMTABLES: (params) => {
        let s = `select * from ${params.tableName} where product_id=${params.id};`
        console.log(s);
        return s;
    },
    GETCOUNTOFPRODUCTS: (params) => {
        let getCount = `select count(*) as total from ${params.tableName};`
        return getCount;
    },
    GET_ALL_COLORS: "select * from colors",
    GET_BONUS_FOR_PRODUCT: 'select b.* from bonus_user bu inner join bonus b on b.id=bu.bonus_id and b.shop_id=? where bu.user_id=?',
    GET_ARZANLADYSH_FOR_PRODUCT: 'select ak.* from arzanladysh_kart_user au inner join arzanladysh_kart ak on ak.id=au.arzanladysh_id and ak.shop_id=? where au.user_id=? and au.status=1',
    GET_ISLIKED: 'select * from like_products where user_id=? and product_id=?',
    INCREASE_VIEW_COUNT: 'update product set seen=IFNULL(seen,0)+1 where id=?'
}
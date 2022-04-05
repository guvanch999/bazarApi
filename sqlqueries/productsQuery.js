module.exports = {
    SHOPDETAILFORPRODUCTDETAIL:(params)=>``,
    DETAILMINI: (params) => `select p.*,c.* from product p inner join colors c on c.id=p.color_id where p.id=${params.id}`,


    DETAILSFULL: (params) => `select p.*,c.*,s.shop_name,s.photo as shop_photo,s.phones as shop_phones from product p inner join colors c on c.id=p.colors_id inner join shop s on s.id=p.shop_id where p.id=${params.id}`,
    SHOPPRODUCTCOUNT:(shop_id)=>`select count(*) as total from product where id=${shop_id}`,
    PRODUCTIMAGES:(product_id)=>`select * from product_photo where product_id=${product_id}`,

    PRODUCTSIZE: (params) => `select * from size where product_id=${params.id}`,

    //product detailda color maglumatlaryny ugratmaly
    GETPRODUCTSBYFILTERANDSEARCH: (params) => {
        let s = `select * from product  where verify=${params.verify} `

        if (params.filter) {
            s += ``
            params.filterValues.forEach(filter=>{
                console.log(filter);
                s += ` and ${filter.key} = '${filter.value}' `
            })
        }
        if(params.query){
            s+=` and UPPER(concat(description,descriptionRU,product_name,product_nameRU)) like UPPER('%${params.query}%') `
        }
        if(params.mustsort){
            s+=` order by ${params.sortFeild} ${params.sortValue} `
        }
        s+=` limit ${params.offset}, ${params.limit}`

        console.log(s);
        return s;
    },
    GETPRODUCTSBYFILTERANDSEARCHCOUNT: (params) => {
        let s = `select count(*) as total from product  where verify=${params.verify} `

        if (params.filter) {
            s += ``
            params.filterValues.forEach(filter=>{
                console.log(filter);
                s += ` and ${filter.key} = '${filter.value}' `
            })
        }
        if(params.query){
            s+=` and UPPER(concat(description,descriptionRU,product_name,product_nameRU)) like UPPER('%${params.query}%') `
        }
        console.log(s);
        return s;
    },
    SELECTSFROMTABLES:(params)=>{
        let s=`select * from ${params.tableName} where product_id=${params.id};`
        console.log(s);
        return s;
    },
    GETCOUNTOFPRODUCTS:(params)=>{
        let getCount=`select count(*) as total from ${params.tableName};`
        return getCount;
    }
}
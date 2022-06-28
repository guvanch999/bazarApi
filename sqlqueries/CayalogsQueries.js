module.exports = {
     KATALOGSOFSHOP:(params)=>`select k.* from katalog as k inner join shop_katalog as sk on sk.katalog_id=k.id where sk.shop_id=${params.shop_id}`,



     //ahli kataloglary tertip nomeri boyuncha ceklmeli
     //kategoriyalary catalog id boyuncha cekmeli

     SELECTALLKATALOGS:`select * from katalog;`,
     ALLCATALOGS:(params)=>`select k.*,(select  count(c.*) from category c where c.katalog_id=k.id) as categoryCount from katalog k where k.visible=1 order by k.tertip_nomer desc;`,
     //shopcataloga categorysan goshmaly

     CATEGORIESFORKATALOG:(params)=>`select * from category where katalog_id=${params.catalog_id} and visible=1;`,
     //done


     GETCATALOGSWITHFILTER: (params) => {
          let s = "select * from katalog  where visible=1  "

          if (params.filter) {
               params.filterValues.forEach(filter=>{
                    console.log(filter);
                    s += ` and ${filter.key} = '${filter.value}' `
               })
          }
          if(params.limit){
               s+=` limit  ${params.limit}`
          }
          console.log(s);
          return s;
     },
     GETTABLEPARAMS:(params)=>{
      let s=`select * from ${params.tableName} where katalog_id='${params.id}';`
          return s;
     }

}

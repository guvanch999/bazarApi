module.exports = {
     KATALOGSOFSHOP:(params)=>`select k.* from katalog as k inner join shop_katalog as sk on sk.katalog_id=k.id where sk.shop_id=${params.shop_id} and k.bolum_id = ${params.bolum_id}`,

     //ahli kataloglary tertip nomeri boyuncha ceklmeli
     //kategoriyalary catalog id boyuncha cekmeli
     ALLCATALOGS:(params)=>`select * from katalog where visible=1 order by tertip_nomer desc;`,
     CATEGORIESFORKATALOG:(params)=>`select * from category where katalog_id=${params.catalog_id} and visible=1;`
     //done

}

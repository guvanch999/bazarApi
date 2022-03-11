module.exports = {
    SERVICEKATALOGS:(params)=>`select * from katalog where bolum_id=${params.id}`,

    SERVICESHOPS:(params)=>`select * from service_shops limit 6;`,
    SERVICEPRODUCTS:(params)=>{
        var page=params.page;
        var count=params.count||20;
        var skip=(page-1) * count;
        var s=`select * from service_product `;
        if(params.isFilter || params.hasIDS){
            s+=' where ' ;
            if(params.serviceID){
                s+=` service_id =${params.serviceID} and  `
            }
            if(params.catalogID){
                s+=` catalog_id =${params.catalogID} and  `
            }
        } s+=" skip "+skip+" limit "+count;
        return s;
    },

}
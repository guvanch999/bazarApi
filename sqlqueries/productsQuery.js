module.exports = {
   DETAILMINI:(params)=>`select * from product where id=${params.id}`,
    DETAILSFULL:(params)=>`select * from product where id=${params.id}`,
    PRODUCTSIZE:(params)=>`select * from size where product_id=${params.id}`,
}
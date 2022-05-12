const testRouter=require('./testRouter');
const homePageRoutes=require('./homePageRouter');
const productRouter=require('./productRouter');
const catalogrouter=require('./cataloglarRouter');
const shopRouters=require('./shopRouter');
const abunalar=require('./abunalar');
const adress=require('./adresesRoutes')
const hyzmatRouter=require('./hyzmatRouter')
const smsAppRouter=require('./smsAppRouter')
//const signINrouter=require('./singinrouter')
module.exports =(app)=>{
    app.use('/',smsAppRouter);
    app.use('/api/v1/home',homePageRoutes);
    app.use('/api/v1/product',productRouter);
    app.use('/api/v1/catalogs',catalogrouter);
    app.use('/api/v1/shops',shopRouters);
    app.use('/api/v1/abunalar',abunalar);
    app.use('/api/v1/adress',adress);
    app.use('/api/v1/services',hyzmatRouter)
  //  app.use('/api/v1/user',signINrouter)
    app.use('/',testRouter);
    return app;
}

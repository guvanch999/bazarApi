const sharp = require('sharp');
const settings=require('../settings/imageSizes')
class Resize {
    constructor(takedfolder,takedfilename) {
        this.mainfolder="uploads";
        this.folder = takedfolder;
        this.filename=takedfilename;

        this.width=settings.defoult.width;
        this.height=settings.defoult.height;
    }

    async save(buffer) {

        const _filepath = this.fileURL();
        try{
            await sharp(buffer, { failOnError: false })
                .resize(this.width, this.height, {
                    fit: sharp.fit.inside,
                    withoutEnlargement: true
                })
                .toFile(_filepath);
        }
        catch(err){
            console.log(err);
        }
        return _filepath;
    }
    setparams(sizes){
        this.width=sizes.width;
        this.height=sizes.height;
    }
    filepath() {
        return this.mainfolder+"\\"+ this.folder+"\\"+this.filename;
    }
    fileURL(){
        return this.mainfolder+"/"+ this.folder+"/"+this.filename;
    }
}
module.exports = Resize;

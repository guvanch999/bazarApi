const language = require('./lang');

module.exports = {
    sendRespondInvalidParams: async (res, lang) => {
        return res.status(400).json({
            success: false,
            message: lang === 'ru' ? language.MsgRuFlags.INVALID_PARAMS : language.MsgTmFlags.INVALID_PARAMS
        });
    },
    sendRespondInternalSErr: async (res, lang) => {
        return res.status(500).json({
            success: false,
            message: lang === 'ru' ? language.MsgRuFlags.INTERNAL_SERVER_ERROR : language.MsgTmFlags.INTERNAL_SERVER_ERROR
        });
    },
    sendSuccess: async (res, data) => {
        return res.status(200).json({
            success: true,
            data: data
        })
    },
    sendNoProductDetails: async (res, lang) => {
        return res.status(402).json({
            success: false,
            message: lang === 'ru' ? language.MsgRuFlags.NO_PRODUCT_DETECTED : language.MsgTmFlags.NO_PRODUCT_DETECTED
        });
    },
    sendSuccessWithCount:(res, data, total)=>{
        return res.status(200).json({
            success: true,
            total:total,
            data: data
        });
    }
}
const jwt = require('jsonwebtoken');
const pool = require('../db/db');
const language = require('../utils/lang');
const settings = require('../settings/usersettings')
exports.VerifyToken = async (req, res, next) => {
    const token = req.header('auth-token');
    const notRequired = req.header('not-required') || false;
    if (notRequired && !token) {
        req.user = {user_id: -1}
        next()
    } else {
        if (!token) return res.status(401).json({
            success: false,
            message: language.MsgRuFlags.ERROR_TOKEN
        });
        try {
            const verified = jwt.verify(token, settings.APISECRETKEY);
            req.user = verified;
            next();
        } catch (err) {
            console.log(err);
            return res.status(401).json({
                success: false,
                message: language.MsgRuFlags.ERROR_TOKEN
            });
        }
    }
}
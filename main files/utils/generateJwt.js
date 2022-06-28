const jwt = require("jsonwebtoken");

module.exports = function (id, email){
    return jwt.sign(
        {id: id, email},
        process.env.SECRET_KEY,
        {expiresIn: '24h'}
    )
}
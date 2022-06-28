const sequelize = require('./db connect')
const {INTEGER, STRING, DATE, BOOLEAN} = require("sequelize");

const User = sequelize.define('User', {
    id: {type: INTEGER, primaryKey: true, autoIncrement: true},
    firstName: {type: STRING},
    lastName: {type: STRING},
    email: {type: STRING, unique: true},
    password: {type: STRING},
    gender: {type: BOOLEAN},
    img: {type: STRING},
})

module.exports = User
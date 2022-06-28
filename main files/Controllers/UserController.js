const ApiError = require('../Error/ApiError')
const User = require('../Model/models')
const bcrypt = require('bcrypt')
const generateJwt = require('../utils/generateJwt')

class UserController{
    async register(req, res, next){
        try {
            const {firstName, email, password} = req.body

            if(!firstName || !email || !password) return next(ApiError.badRequest("Не введены данные"))

            //Проверка на существующего пользователя
            const candidate = await User.findOne({where: {email}})
            if(candidate) return next(ApiError.badRequest('Пользователь с таким email существует'))

            //Хеширование пароля и создание пользователя
            const hashPassword = await bcrypt.hash(password, 5)
            const user = await User.create({firstName: firstName, email: email, password: hashPassword})

            const token = generateJwt(user.id, user.email)

            return res.json({token})

        }catch (e){
            next(ApiError.internal(e.message))
        }
    }


    async login(req, res, next){
        try{
            const {email, password} = req.body
            const user = await User.findOne({where: {email: email}})
            if(!user) return next(ApiError.badRequest('Пользователь с таким email не найден'))

            let comparePassword = bcrypt.compareSync(password, user.password)
            if(!comparePassword) return next(ApiError.badRequest('Неверный пароль'))

            const token = generateJwt(user.id, user.email)
            return res.json({token})

        }catch (e){
            next(ApiError.internal(e.message))
        }
    }

}

module.exports = new UserController()
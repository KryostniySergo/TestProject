const User = require('../Model/models')
const checkPhoto = require('../utils/checkPhoto')
const ApiError = require('../Error/ApiError')
const path = require("path")
const uuid = require('uuid')

class ProfileController{
    async refactor(req, res, next){
        try {
            const {id} = req.params
            const {firstName, lastName, email, gender} = req.body
            let fileName = null

            //Проверка на наличие фотографии
            if(req.files){
                const {img} = req.files

                fileName = uuid.v4() + ".jpg" //Генерация уникального имени файла

                await img.mv(path.resolve(__dirname, '..', 'static', fileName))

                //Проверяем фото на формат(.jpg | .png) и размер
                if(checkPhoto(img)) return next(ApiError.badRequest("Размер фото слишком большой или фото неверного формата"))
            }

            const user = await User.findOne({where: {id: id}})

            await user.update({
                firstName: firstName,
                lastName: lastName,
                email: email,
                gender: gender,
                img: fileName
            })

            await user.save()

            return res.json(user)
        }catch (e){
            return next(ApiError.internal(e.message))
        }
    }

    async getOne(req, res){
        const {id} = req.params
        const user = await User.findOne({where: {id}})

        return res.json(user)
    }

    async getAll(req, res){
        let {page} = req.query
        page = page || 1
        let limit = 10
        let offset = page * limit - limit //По 10 пользователей на страницу

        const user = await User.findAll({limit: limit, offset: offset, order: [['createdAt', 'DESC']]}) //В порядке убывания по дате

        return res.json(user)

    }
}

module.exports = new ProfileController()
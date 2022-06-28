const Router = require('express')
const router = new Router()

const userController = require('../Controllers/UserController')

router.post('/register', userController.register)
router.post('/login', userController.login)

module.exports = router
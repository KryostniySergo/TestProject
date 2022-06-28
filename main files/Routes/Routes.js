const Router = require('express')
const router = new Router()

const userRouter = require('./UserRoutes')
const profileRouter = require('./ProfileRoutes')

router.use('/user', userRouter)
router.use('/profile', profileRouter)

module.exports = router
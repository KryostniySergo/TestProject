const Router = require('express')
const router = new Router()

const profileController = require('../Controllers/ProfileController')

router.get('/:id', profileController.getOne)
router.get('/', profileController.getAll)
router.put('/:id', profileController.refactor)


module.exports = router
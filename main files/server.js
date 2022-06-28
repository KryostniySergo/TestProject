require('dotenv').config()
const express = require('express')
const sequelize = require('./Model/db connect')
const cors = require('cors')
const fileUpload = require('express-fileupload')
const path = require('path')

const errorHandler = require('./middleware/ErrorHandlingMiddleware')

const router = require('./Routes/Routes')

const PORT = process.env.PORT || 7000
const app = express()


app.use(cors())
app.use(express.json())
app.use(fileUpload({}))
app.use(express.static(path.resolve(__dirname, 'static'))) //Подключаем статику

app.use('/', router)

app.use(errorHandler) //Универсальная обработка ошибок

const start = async () =>{
    try {
        await sequelize.authenticate()
        await sequelize.sync()

        app.listen(PORT, () => console.log(`Server run on port: ${PORT}`))
    }catch (e){
        console.log(e)
    }
}

start()
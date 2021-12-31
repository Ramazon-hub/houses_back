const express = require('express')
const config = require('./config')
const cors = require('cors')
const router = require('./modules/routes')
const app = express()
app.use(express.json())
app.use(cors())
app.use(router)
const PORT = config.PORT
app.listen(PORT,console.log(`app run on port ${PORT}`))

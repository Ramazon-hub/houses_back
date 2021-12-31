const { Router } = require('express')
const router = Router()
const Module = require('./company')
router.get('/',Module.GET)

module.exports=router
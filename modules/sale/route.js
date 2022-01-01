const {Router} = require('express')
const router=Router()
const Module = require('./sale')
router.post('/',Module.POST)
module.exports=router
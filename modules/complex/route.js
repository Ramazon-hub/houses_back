const { Router } = require('express')
const router = Router()
const Module = require('./complex')
router.get('/:companyId',Module.GET)

module.exports=router
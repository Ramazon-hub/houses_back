const { Router } = require('express')
const router = Router()
const Module = require('./appartment')
router.get('/:companyId/:complexId',Module.GET)
module.exports=router
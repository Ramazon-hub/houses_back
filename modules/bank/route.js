const {Router} = require('express')
const bank = require('./bank')
const router = Router()
router.get('/:sum',bank.GET)

module.exports=router
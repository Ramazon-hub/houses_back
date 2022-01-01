const {Router} = require('express')
const bank = require('./bank')
const router = Router()
router.get('/o',bank.olx)
router.get('/:sum',bank.GET)

module.exports=router
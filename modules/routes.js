const { Router } = require('express')
const router=Router()
const company=require('./company/route')
const complex = require('./complex/route')
const apartment = require('./appartment/route')
// const bank = require('./')

router.use('/buy',company)
router.use('/buy',complex)
router.use('/buy',apartment)


module.exports=router
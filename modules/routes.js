const { Router } = require('express')
const router=Router()
const company=require('./company/route')
const complex = require('./complex/route')
const apartment = require('./appartment/route')
const bank = require('./bank/route')
const sale = require('./sale/route')
router.use('/bank',bank)
router.use('/buy',company)
router.use('/buy',complex)
router.use('/buy',apartment)
router.use('/sale',sale)



module.exports=router
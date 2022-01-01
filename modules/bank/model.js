const { fetch,fetchAll} = require('../../lib/postgres')
const GET = `
select * from banks where banks.limit_money>=$1
`
const get=`select * from banks`
const allBanks = (sum)=> fetchAll(GET,sum)
const allBank = ()=> fetchAll(get,)

module.exports={
    allBanks,
    allBank
}
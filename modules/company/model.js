const { fetch,fetchAll} = require('../../lib/postgres')
const GET = `
   select * from company
`
const allCompany = ()=> fetchAll(GET)
module.exports={
    allCompany
}
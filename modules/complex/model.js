const { fetch,fetchAll} = require('../../lib/postgres')
const GET = `
   select * from complex where complex_ref_company=$1
`
const allComplex= (companyId)=> fetchAll(GET,companyId)
module.exports={
    allComplex
}
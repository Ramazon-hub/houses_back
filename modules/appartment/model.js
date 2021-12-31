const { fetch,fetchAll} = require('../../lib/postgres')
const GET = `
   select * from apartment where apartment_ref_complex=$1
`
const allApartment= (complexId)=> fetchAll(GET,complexId)
module.exports={
    allApartment
}
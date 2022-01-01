const {fetch} = require('../../lib/postgres')
const NEW_SALE =`
    insert into orders(
        fname,
        lname,
        email,
        company_ref_order,
        complex_ref_order,
        apartment_ref_order,
        bank_ref_order
    )values($1,$2,$3,$4,$5,$6,$7) returning *
`
const newSale=(fName,lName,email,companyId,complexId,appartmentId,bankId)=>fetch(NEW_SALE,fName,lName,email,companyId,complexId,appartmentId,bankId)
module.exports={
    newSale
}
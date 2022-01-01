const model=require('./model')
module.exports={
    POST:async(req,res)=>{
        try{
            const { fName,lName,email,companyId,complexId,apartmentId,bankId } = req.body
            const newSale=await model.newSale(fName,lName,email,companyId,complexId,apartmentId,bankId)
            if(!newSale){
                res.status(400).json({message:'Bad request !'})
            }else{
                res.status(200).json(newSale)
            }

        }catch(err){
            res.status(500).json({message:'Server error !'})
        }
    }
}
const model = require('./model')
module.exports={
    GET:async(req,res)=>{
        try{
            const { companyId } = req.params
            const allComplex = await model.allComplex(companyId);
            if(!allComplex){
            res.status(400).json({message:'Bad request !'})

            }else{
            res.status(200).json(allComplex)

            }

        }catch(err){
            res.status(500).json({message:'Server error !'})
        }
    }
}
const model = require('./model')
module.exports={
    GET:async(req,res)=>{
        try{
            const { complexId } = req.params
            const allApartment = await model.allApartment(complexId);
            if(!allApartment){
            res.status(400).json({message:'Bad request !'})

            }else{
            res.status(200).json(allApartment)

            }

        }catch(err){
            res.status(500).json({message:'Server error !'})
        }
    }
}
const model = require('./model')
module.exports={
    GET:async(_,res)=>{
        try{
            const allCompany = await model.allCompany();
            if(!allCompany){
            res.status(400).json({message:'Bad request !'})

            }else{
            res.status(200).json(allCompany)

            }

        }catch(err){
            res.status(500).json({message:'Server error !'})
        }
    }
}
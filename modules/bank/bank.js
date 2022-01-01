const model = require('./model')
module.exports={
    GET:async(req,res)=>{
        try{
            const { sum } =req.params
            const allBanks = await model.allBanks(sum);
            if(!allBanks){
            res.status(400).json({message:'Bad request !'})

            }else{
            res.status(200).json(allBanks)

            }

        }catch(err){
            res.status(500).json({message:'Server error !'})
        }
    },
    olx:async(req,res)=>{
        try{
            // console.log(req);
            const allBank = await model.allBank();
            console.log(allBank);
            if(!allBank){
            res.status(400).json({message:'Bad request !'})

            }else{
            res.status(200).json({allBank})

            }

        }catch(err){
            res.status(500).json({message:'Server error !'})
        }
    }
}
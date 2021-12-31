const { pg } = require('../config')
const { Pool } = require('pg');
const pool = new Pool({connectionString:pg.connectionElString});
const fetch = async(SQL,...values) =>{
    const client = await pool.connect()

    try{
        const { rows : [ row ] } = await client.query(SQL,values)
        return row
    }
    finally{
        await client.release();
    }
}

const fetchAll = async(SQL,...values) =>{
    const client =await pool.connect()

    try{
        const { rows } = await client.query(SQL,values)
        return rows
    }
    finally{
        await client.release();
    }
}


module.exports={
    fetch,fetchAll
}
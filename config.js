const pg = {
    connectionString:'postgres://postgres:ramazon@localhost:5432/houses',
    connectionElString:`postgres://dxveefak:LCdaWaL31rnZBG6QeOGPxEfF2vz1ZzZS@castor.db.elephantsql.com/dxveefak`
}

module.exports={
    PORT:process.env.PORT || 4000,
    pg
}

# Database Library

function connect(url)
    return system.dbconnect(url)
end

function query(db,sql)
    return system.dbquery(db,sql)
end
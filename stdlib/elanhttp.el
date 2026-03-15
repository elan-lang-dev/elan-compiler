# HTTP Library

function get(url)
    return system.httpget(url)
end

function post(url,data)
    return system.httppost(url,data)
end
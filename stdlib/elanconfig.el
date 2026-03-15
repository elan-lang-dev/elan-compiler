# Config Library

function load(path)
    return system.configload(path)
end

function save(path,data)
    system.configsave(path,data)
end
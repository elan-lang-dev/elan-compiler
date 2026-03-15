# Mesh Library

function load(path)
    return system.meshload(path)
end

function scale(mesh,value)
    system.meshscale(mesh,value)
end
# 3D Renderer

function load_model(path)
    return system.model3d(path)
end

function rotate(obj,x,y,z)
    system.rotate3d(obj,x,y,z)
end

function draw(obj)
    system.draw3d(obj)
end
# 3D Physics

function gravity(scene,value)
    system.physicsgravity(scene,value)
end

function collide(a,b)
    return system.physicscollide(a,b)
end
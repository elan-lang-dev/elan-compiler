# 3D Graphics Library

function create_scene()
    return system.scene3d()
end

function cube(scene,x,y,z,size)
    system.cube(scene,x,y,z,size)
end

function render(scene)
    system.render3d(scene)
end
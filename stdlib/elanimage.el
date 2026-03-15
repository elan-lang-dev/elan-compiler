# Image Library

function load(path)
    return system.imageload(path)
end

function save(img,path)
    system.imagesave(img,path)
end

function resize(img,w,h)
    return system.imageresize(img,w,h)
end
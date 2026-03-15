# Camera Library

function open()
    return system.cameraopen()
end

function capture(cam)
    return system.cameraframe(cam)
end

function close(cam)
    system.cameraclose(cam)
end
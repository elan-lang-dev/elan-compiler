# Video Library

function open(path)
    return system.videoopen(path)
end

function frame(video)
    return system.videoframe(video)
end

function close(video)
    system.videoclose(video)
end
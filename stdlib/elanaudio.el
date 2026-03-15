# Audio Library

function load(path)
    return system.audioload(path)
end

function play(sound)
    system.audioplay(sound)
end

function stop(sound)
    system.audiostop(sound)
end
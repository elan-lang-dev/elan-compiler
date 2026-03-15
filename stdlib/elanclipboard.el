# Clipboard Library

function copy(text)
    system.clipcopy(text)
end

function paste()
    return system.clippaste()
end
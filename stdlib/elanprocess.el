# Process Library

function run(cmd)
    return system.exec(cmd)
end

function pid()
    return system.pid()
end
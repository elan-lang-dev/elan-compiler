# PDF Library

function read(path)
    return system.pdfread(path)
end

function write(path,text)
    system.pdfwrite(path,text)
end
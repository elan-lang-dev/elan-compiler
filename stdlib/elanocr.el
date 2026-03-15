# OCR Library

function readtext(image)
    return system.ocr(image)
end

function readfile(path)
    var img = system.imageload(path)
    return system.ocr(img)
end
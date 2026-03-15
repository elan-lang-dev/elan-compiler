# Graphics Library

function line(x1,y1,x2,y2)
    system.gfx_line(x1,y1,x2,y2)
end

function rectangle(x,y,w,h)
    system.gfx_rect(x,y,w,h)
end

function circle(x,y,r)
    system.gfx_circle(x,y,r)
end

function image(path,x,y)
    system.gfx_image(path,x,y)
end
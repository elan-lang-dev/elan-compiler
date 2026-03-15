# ELAN GUI Library

function window(title,width,height)
    return system.gui_window(title,width,height)
end

function button(text,x,y,w,h)
    return system.gui_button(text,x,y,w,h)
end

function label(text,x,y)
    return system.gui_label(text,x,y)
end

function textbox(x,y,w,h)
    return system.gui_textbox(x,y,w,h)
end

function show()
    system.gui_show()
end
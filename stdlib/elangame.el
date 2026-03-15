# ELAN Game Engine

function init()
    system.game_init()
end

function window(title,w,h)
    system.game_window(title,w,h)
end

function draw_rect(x,y,w,h)
    system.game_rect(x,y,w,h)
end

function draw_circle(x,y,r)
    system.game_circle(x,y,r)
end

function update()
    system.game_update()
end
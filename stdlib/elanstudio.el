# ==========================================================
# ELAN STUDIO ENGINE
# All-in-One Engine
# GUI + 2D + 3D + Audio + Physics + Build System
# Owners: Elancheran C G, Elandhiraiyan C G
# ==========================================================


# =========================
# ENGINE INIT
# =========================

function engine_init()

    system.engine_init()

end


function window(title,w,h)

    system.engine_window(title,w,h)

end


# =========================
# GUI SYSTEM
# =========================

function gui_button(text,x,y,w,h)

    system.gui_button(text,x,y,w,h)

end


function gui_label(text,x,y)

    system.gui_label(text,x,y)

end


function gui_input(x,y,w,h)

    return system.gui_input(x,y,w,h)

end


function gui_show()

    system.gui_show()

end


# =========================
# 2D GRAPHICS
# =========================

function rect(x,y,w,h)

    system.draw_rect(x,y,w,h)

end


function circle(x,y,r)

    system.draw_circle(x,y,r)

end


function line(x1,y1,x2,y2)

    system.draw_line(x1,y1,x2,y2)

end


function sprite(path,x,y)

    system.draw_sprite(path,x,y)

end


# =========================
# 3D GRAPHICS
# =========================

function cube(x,y,z,size)

    system.draw_cube(x,y,z,size)

end


function sphere(x,y,z,r)

    system.draw_sphere(x,y,z,r)

end


function model(path,x,y,z)

    system.draw_model(path,x,y,z)

end


# =========================
# CAMERA
# =========================

function camera(x,y,z)

    system.camera_set(x,y,z)

end


function camera_look(x,y,z)

    system.camera_look(x,y,z)

end


# =========================
# LIGHT
# =========================

function light(x,y,z)

    system.light_point(x,y,z)

end


# =========================
# AUDIO
# =========================

function sound_load(path)

    return system.audio_load(path)

end


function sound_play(s)

    system.audio_play(s)

end


function sound_stop(s)

    system.audio_stop(s)

end


# =========================
# PHYSICS
# =========================

function physics_enable(obj)

    system.physics_enable(obj)

end


function force(obj,x,y,z)

    system.physics_force(obj,x,y,z)

end


function collision(a,b)

    return system.physics_collision(a,b)

end


# =========================
# INPUT
# =========================

function key(k)

    return system.key_pressed(k)

end


function mousex()

    return system.mouse_x()

end


function mousey()

    return system.mouse_y()

end


# =========================
# PARTICLES
# =========================

function particles(x,y,z)

    system.particles_create(x,y,z)

end


# =========================
# NETWORK
# =========================

function http_get(url)

    return system.http_get(url)

end


function http_post(url,data)

    return system.http_post(url,data)

end


# =========================
# FILE SYSTEM
# =========================

function file_read(path)

    return system.readfile(path)

end


function file_write(path,data)

    system.writefile(path,data)

end


# =========================
# BUILD SYSTEM
# =========================

function build(script)

    pri("Building executable...")

    var exe = system.buildexe(script)

    pri("Build complete: " + exe)

end


# =========================
# GAME LOOP
# =========================

function update()

    system.engine_update()

end


function render()

    system.engine_render()

end


function runloop()

    while true

        update()

        render()

    end

end
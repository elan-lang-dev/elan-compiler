# ELAN Programming Language
# Core Standard Library
# Owners: Elancheran C G, Elandhiraiyan C G
# © 2026 ELAN Language Project


# =========================
# PRINT FUNCTIONS
# =========================

function pri(text)
    system.print(text)
end

function println(text)
    system.print(text + "\n")
end

function printline(text)
    system.print(text + "\n")
end


# =========================
# INPUT FUNCTIONS
# =========================

function input(prompt)
    system.print(prompt)
    return system.read()
end

function inputint(prompt)
    system.print(prompt)
    var v = system.read()
    return system.int(v)
end


# =========================
# TYPE CONVERSION
# =========================

function tostring(value)
    return system.string(value)
end

function toint(value)
    return system.int(value)
end

function tofloat(value)
    return system.float(value)
end


# =========================
# SYSTEM CONTROL
# =========================

function exit()
    system.stop()
end

function sleep(seconds)
    system.wait(seconds)
end

function version()
    return "ELAN 1.0"
end


# =========================
# STRING UTILITIES
# =========================

function length(text)
    return system.len(text)
end

function upper(text)
    return system.upper(text)
end

function lower(text)
    return system.lower(text)
end

function trim(text)
    return system.trim(text)
end

function concat(a,b)
    return a + b
end


# =========================
# NUMBER UTILITIES
# =========================

function abs(value)
    if value < 0
        return value * -1
    else
        return value
    end
end

function max(a,b)
    if a > b
        return a
    else
        return b
    end
end

function min(a,b)
    if a < b
        return a
    else
        return b
    end
end


# =========================
# BOOLEAN UTILITIES
# =========================

function istrue(value)
    if value == true
        return true
    else
        return false
    end
end

function isfalse(value)
    if value == false
        return true
    else
        return false
    end
end


# =========================
# DEBUG UTILITIES
# =========================

function debug(msg)
    system.print("[DEBUG] " + msg)
end

function info(msg)
    system.print("[INFO] " + msg)
end

function warn(msg)
    system.print("[WARN] " + msg)
end

function error(msg)
    system.print("[ERROR] " + msg)
end


# =========================
# RANDOM UTILITIES
# =========================

function random()
    return system.random()
end

function randint(min,max)
    return system.random(min,max)
end


# =========================
# TIME UTILITIES
# =========================

function time()
    return system.time()
end

function date()
    return system.date()
end


# =========================
# FILE UTILITIES
# =========================

function readfile(path)
    return system.readfile(path)
end

function writefile(path,data)
    system.writefile(path,data)
end

function appendfile(path,data)
    system.appendfile(path,data)
end


# =========================
# ARRAY UTILITIES
# =========================

function arrlen(arr)
    return system.len(arr)
end

function push(arr,value)
    system.push(arr,value)
end

function pop(arr)
    return system.pop(arr)
end
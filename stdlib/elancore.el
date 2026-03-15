# =====================================================
# ELAN Programming Language
# Core Standard Library
# Owners: Elancheran C G, Elandhiraiyan C G
# © 2026 ELAN Language Project
# =====================================================


# =========================
# PRINT FUNCTIONS
# =========================

function pri(text)
    system.print(text)
end

function println(text)
    system.print(text + "\n")
end

function printspace(text)
    system.print(text + " ")
end

function printtab(text)
    system.print(text + "\t")
end

function newline()
    system.print("\n")
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

function inputfloat(prompt)
    system.print(prompt)
    var v = system.read()
    return system.float(v)
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

function tobool(value)
    return system.bool(value)
end


# =========================
# STRING UTILITIES
# =========================

function strlen(text)
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

function startswith(text,prefix)
    return system.startswith(text,prefix)
end

function endswith(text,suffix)
    return system.endswith(text,suffix)
end

function contains(text,val)
    return system.contains(text,val)
end

function replace(text,a,b)
    return system.replace(text,a,b)
end


# =========================
# NUMBER UTILITIES
# =========================

function abs(x)
    if x < 0
        return x * -1
    else
        return x
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

function clamp(x,a,b)
    if x < a
        return a
    end
    if x > b
        return b
    end
    return x
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

function randomfloat()
    return system.randomfloat()
end


# =========================
# ARRAY UTILITIES
# =========================

function arrlen(arr)
    return system.len(arr)
end

function push(arr,val)
    system.push(arr,val)
end

function pop(arr)
    return system.pop(arr)
end

function insert(arr,index,val)
    system.insert(arr,index,val)
end

function remove(arr,index)
    system.remove(arr,index)
end

function clear(arr)
    system.clear(arr)
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

function fileexists(path)
    return system.fileexists(path)
end

function filesize(path)
    return system.filesize(path)
end


# =========================
# TIME UTILITIES
# =========================

function now()
    return system.time()
end

function date()
    return system.date()
end

function sleep(seconds)
    system.wait(seconds)
end

function timestamp()
    return system.timestamp()
end


# =========================
# SYSTEM UTILITIES
# =========================

function version()
    return "ELAN 1.0"
end

function platform()
    return system.platform()
end

function cwd()
    return system.cwd()
end

function exit()
    system.stop()
end


# =========================
# DEBUG / LOGGING
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

function fatal(msg)
    system.print("[FATAL] " + msg)
    system.stop()
end


# =========================
# ENVIRONMENT
# =========================

function getenv(key)
    return system.getenv(key)
end

function setenv(key,value)
    system.setenv(key,value)
end


# =========================
# MATH BASIC
# =========================

function add(a,b)
    return a + b
end

function sub(a,b)
    return a - b
end

function mul(a,b)
    return a * b
end

function div(a,b)
    return a / b
end

function mod(a,b)
    return a % b
end


# =========================
# LOOP HELPERS
# =========================

function repeat(times,func)
    var i = 0
    while i < times
        func()
        i = i + 1
    end
end


# =========================
# STRING BUILDERS
# =========================

function join(a,b)
    return a + b
end

function spacejoin(a,b)
    return a + " " + b
end

function linejoin(a,b)
    return a + "\n" + b
end


# =========================
# BOOLEAN UTILITIES
# =========================

function istrue(v)
    if v == true
        return true
    else
        return false
    end
end

function isfalse(v)
    if v == false
        return true
    else
        return false
    end
end


# =========================
# PLACEHOLDER MODULES
# (extend to reach 1000+ lines)
# =========================

function future_ai_helper()
    return "AI module placeholder"
end

function future_graphics_helper()
    return "Graphics module placeholder"
end

function future_network_helper()
    return "Network module placeholder"
end

function future_database_helper()
    return "Database module placeholder"
end

function future_cloud_helper()
    return "Cloud module placeholder"
end
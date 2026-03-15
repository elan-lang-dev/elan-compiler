# ======================================================
# ELAN Programming Language
# Main Compiler Engine
# Owners: Elancheran C G, Elandhiraiyan C G
# ======================================================


# ----------------------------
# VERSION
# ----------------------------

var ELAN_VERSION = "1.0"


# ----------------------------
# CLI ENTRY
# ----------------------------

function main()

    var args = system.args()

    if arrlen(args) == 0
        pri("ELAN Compiler " + ELAN_VERSION)
        pri("Usage: elan run <file.el>")
        return
    end

    var cmd = args[0]

    if cmd == "run"
        runfile(args[1])
    end

    if cmd == "version"
        pri(ELAN_VERSION)
    end

    if cmd == "help"
        showhelp()
    end

end


# ----------------------------
# HELP MENU
# ----------------------------

function showhelp()

    pri("ELAN Programming Language")
    pri("")
    pri("Commands:")
    pri("  elan run <file.el>")
    pri("  elan version")
    pri("  elan help")
    pri("")

end


# ----------------------------
# RUN FILE
# ----------------------------

function runfile(path)

    if fileexists(path) == false
        error("File not found")
        return
    end

    var code = readfile(path)

    var tokens = tokenize(code)

    var ast = parse(tokens)

    execute(ast)

end


# ----------------------------
# LEXER
# ----------------------------

function tokenize(code)

    var tokens = []

    var words = system.split(code," ")

    var i = 0

    while i < arrlen(words)

        var w = words[i]

        push(tokens,w)

        i = i + 1

    end

    return tokens

end


# ----------------------------
# PARSER
# ----------------------------

function parse(tokens)

    var ast = []

    var i = 0

    while i < arrlen(tokens)

        var node = tokens[i]

        push(ast,node)

        i = i + 1

    end

    return ast

end


# ----------------------------
# EXECUTION ENGINE
# ----------------------------

function execute(ast)

    var i = 0

    while i < arrlen(ast)

        var cmd = ast[i]

        if cmd == "pri"

            var msg = ast[i+1]

            system.print(msg)

            i = i + 2

        else

            i = i + 1

        end

    end

end


# ----------------------------
# PACKAGE MANAGER
# ----------------------------

function install(pkg)

    pri("Installing package: " + pkg)

    var url = "https://elan-packages.org/" + pkg

    system.download(url)

    pri("Installed")

end


# ----------------------------
# STD LIB LOADER
# ----------------------------

function loadstdlib(name)

    var path = "stdlib/" + name + ".el"

    if fileexists(path)

        var code = readfile(path)

        execute(parse(tokenize(code)))

    else

        warn("stdlib not found")

    end

end


# ----------------------------
# DEBUGGER
# ----------------------------

function debugrun(file)

    pri("[DEBUG] Running " + file)

    runfile(file)

    pri("[DEBUG] Finished")

end


# ----------------------------
# REPL
# ----------------------------

function repl()

    pri("ELAN Interactive Shell")

    while true

        var line = input(">>> ")

        if line == "exit"
            break
        end

        var tokens = tokenize(line)

        var ast = parse(tokens)

        execute(ast)

    end

end


# ----------------------------
# COMPILER START
# ----------------------------

main()
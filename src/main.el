# =====================================================
# ELAN Programming Language
# Main Entry File
# Owners: Elancheran C G, Elandhiraiyan C G
# =====================================================

use elancore


# ----------------------------------
# VERSION
# ----------------------------------

var ELAN_VERSION = "1.0.0"


# ----------------------------------
# PROGRAM START
# ----------------------------------

function main()

    var args = system.args()

    if arrlen(args) == 0
        showhelp()
        return
    end

    var cmd = args[0]

    if cmd == "run"
        runfile(args[1])
    end

    if cmd == "repl"
        repl()
    end

    if cmd == "install"
        installpkg(args[1])
    end

    if cmd == "version"
        pri("ELAN Version " + ELAN_VERSION)
    end

    if cmd == "help"
        showhelp()
    end

end


# ----------------------------------
# HELP MENU
# ----------------------------------

function showhelp()

    pri("ELAN Programming Language")
    pri("---------------------------")
    pri("Commands:")
    pri("  elan run <file.el>")
    pri("  elan repl")
    pri("  elan install <package>")
    pri("  elan version")
    pri("  elan help")

end


# ----------------------------------
# RUN FILE
# ----------------------------------

function runfile(path)

    if fileexists(path) == false
        error("File not found: " + path)
        return
    end

    var code = readfile(path)

    var tokens = tokenize(code)

    var ast = parse(tokens)

    execute(ast)

end


# ----------------------------------
# TOKENIZER
# ----------------------------------

function tokenize(code)

    var tokens = system.split(code," ")

    return tokens

end


# ----------------------------------
# PARSER
# ----------------------------------

function parse(tokens)

    var ast = tokens

    return ast

end


# ----------------------------------
# EXECUTION ENGINE
# ----------------------------------

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


# ----------------------------------
# PACKAGE INSTALLER
# ----------------------------------

function installpkg(name)

    pri("Installing package: " + name)

    var url = "https://elan-packages.org/" + name

    system.download(url)

    pri("Package installed.")

end


# ----------------------------------
# REPL
# ----------------------------------

function repl()

    pri("ELAN Interactive Shell")
    pri("Type 'exit' to quit")

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


# ----------------------------------
# START PROGRAM
# ----------------------------------

main()
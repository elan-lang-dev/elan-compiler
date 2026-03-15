# elan.el
function main()
    var args = system.args()

    if arrlen(args) == 0
        pri("ELAN CLI 1.0")
        pri("Commands: run, repl, install, version, help")
        return
    end

    var cmd = args[0]
    var file = args[1]

    if cmd == "run"
        system.eval(system.readfile(file))
    end

    if cmd == "repl"
        while true
            var input = system.input("> ")
            if input == "exit()"
                break
            end
            system.eval(input)
        end
    end

    if cmd == "install"
        system.run("elpm install " + file)
    end

    if cmd == "version"
        pri("ELAN 1.0")
    end

    if cmd == "help"
        pri("Usage: elan <command> [file/package]")
    end
end

main()
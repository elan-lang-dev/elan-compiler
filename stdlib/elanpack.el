# ELAN Package Builder

function build(script)

    pri("Building executable...")

    var out = system.buildexe(script)

    pri("Executable created: " + out)

end
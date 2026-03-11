module elan

fn main args {

    cmd = args[0]

    if cmd == "run" {
        file = args[1]
        print "Running:"
        print file
    }

    if cmd == "compile" {
        file = args[1]
        print "Compiling:"
        print file
    }

    if cmd == "install" {
        lib = args[1]
        print "Installing library:"
        print lib
    }

    if cmd == "version" {
        print "ELAN 1.0"
    }

}

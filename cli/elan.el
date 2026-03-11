module elan

# ELAN Command Line Interface

fn main args {

    if size args == 0 {

        print "ELAN Command Line Tool"
        print "Usage:"
        print "elan run <file>"
        print "elan compile <file>"
        print "elan install <package>"
        print "elan version"

    }

    cmd = args[0]

    if cmd == "run" {

        file = args[1]
        run file

    }

    if cmd == "compile" {

        file = args[1]
        compile file

    }

    if cmd == "install" {

        pkg = args[1]
        install pkg

    }

    if cmd == "version" {

        version

    }

}

# run program
fn run file {

    print "Running program:"
    print file

}

# compile program
fn compile file {

    print "Compiling program:"
    print file

}

# install package
fn install pkg {

    print "Checking package registry..."

    registry = "https://raw.githubusercontent.com/elan-lang-dev/elan-packages/main/index.json"

    print "Downloading package:"
    print pkg

    url = "https://raw.githubusercontent.com/elan-lang-dev/elan-packages/main/packages/" + pkg + ".el"

    print "Saving to packages folder"

    print "Package installed successfully"

}

# version info
fn version {

    print "ELAN Programming Language"
    print "Version 1.0"
    print "Owner: Elancheran C G"
    print "Co-Owner: Elandhiraiyan C G"

}

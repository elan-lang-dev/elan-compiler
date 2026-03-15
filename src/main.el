# ELAN Compiler Entry Point
# Owner: Elancheran C G

import lexer
import parser
import compiler
import runtime

function main()

    pri("ELAN Compiler Starting...")

    var file = input("Enter .el file to run: ")

    var source = runtime.read_file(file)

    var tokens = lexer.tokenize(source)

    var ast = parser.parse(tokens)

    var program = compiler.compile(ast)

    runtime.execute(program)

end

main()
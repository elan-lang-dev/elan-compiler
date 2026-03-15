# ELAN Core Standard Library
# Owner: Elancheran C G

# print text
function pri(text)
    system.print(text)
end


# print with newline
function println(text)
    system.print(text + "\n")
end


# user input
function input(prompt)
    system.print(prompt)
    return system.read()
end


# convert to number
function toint(value)
    return system.int(value)
end


# convert to string
function tostring(value)
    return system.string(value)
end


# program exit
function exit()
    system.stop()
end


# simple delay
function sleep(seconds)
    system.wait(seconds)
end
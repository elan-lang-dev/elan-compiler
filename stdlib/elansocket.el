# Socket Library

function connect(host,port)
    return system.socketconnect(host,port)
end

function send(sock,data)
    system.socketsend(sock,data)
end

function receive(sock)
    return system.socketrecv(sock)
end
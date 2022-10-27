modem = peripheral.wrap("top")
modem.closeAll()
modem.open(1)

while true do
    --load database
    local handle = fs.open("disk/db.txt","r")
    data = textutils.unserialise(handle.readAll())
    handle.close()
    
    --get modem event
    local event, modemSide, senderChannel, replyChannel, message, senderDistance = os.pullEvent("modem_message")
    rxd = textutils.unserialise(message) 
     data[rxd.player] = data[rxd.player] + rxd.conso
    
    --debug
    print(textutils.serialise(data))
    
    --write database
    local handle = fs.open("disk/db.txt","w")
    handle.write(textutils.serialise(data))
    handle.close()
end  

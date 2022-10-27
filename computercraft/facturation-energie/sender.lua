p = peripheral.wrap("bottom")
a=0
modem = peripheral.wrap("top")
data={
    player = "imosoft",
    conso = 0, 
}
while true do
    for i = 0,50 do
        a = a +  p.getTransferRate()
    end
    print(a)
    data.conso = a 
    modem.transmit(1,0,textutils.serialise(data))
    a=0
end

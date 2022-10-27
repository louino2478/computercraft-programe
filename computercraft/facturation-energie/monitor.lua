m = peripheral.wrap("monitor_2")
olddata = {}
a=0
function printfe(fe)
    if fe >= 1000000000 then
        return tostring(math.floor(fe/10000000)/100).."GFe"
    end
    if fe >= 1000000 then
        return tostring(math.floor(fe/10000)/100).."MFe"
    end
    if fe >= 1000 then
        return tostring(math.floor(fe/10)/100).."KFe"
    end
    if fe < 1000 then
        return tostring(math.floor(fe*100)/100).."Fe"
    end
end

--splash screen
m.clear()
m.setCursorPos(1,1)
m.setTextColor(colors.white)
m.write("Starting IMOSOFT OS...") 
sleep(5)


while true do
    --read database
    local handle = fs.open("disk/db.txt","r")
    data = textutils.unserialise(handle.readAll())
    handle.close()
    
    --force update oldata on start
    if a == 0 then
        olddata = data
        a = 1
    end
    
    --debug
    print(textutils.serialise(data))
    
    --display
    m.clear()
    m.setCursorPos(1,1)
    m.write("IMOSOFT ELECTRICITY")
    m.setCursorPos(1,3)
    for user, conso in pairs(data) do
        if user ~= "day" then
            x,y = m.getCursorPos()
            m.setTextColor(colors.purple) 
            m.write(user)
            m.setTextColor(colors.white)
            m.write(" : ")
            m.write(printfe(conso))
            m.write(" : ")
            if conso-olddata[user] == 0 then
                m.setTextColor(colors.red)
            else
                m.setTextColor(colors.green)
            end
            m.write(printfe((conso-olddata[user])/100).."/t") 
            m.setTextColor(colors.white) 
            m.setCursorPos(1,y+1)
            olddata[user]=conso 
        end
    end
    x,y = m.getCursorPos()
    m.setCursorPos(1,y+2)
    m.setTextColor(colors.gray)
    m.write("conso du jour ")
    m.setTextColor(colors.yellow)
    m.write(tostring(data.day)) 
    m.setTextColor(colors.gray)
    m.write(" aux jour ")
    m.setTextColor(colors.yellow)
    m.write(tostring(os.day()))
    m.setTextColor(colors.white)
    sleep(5)
 end 

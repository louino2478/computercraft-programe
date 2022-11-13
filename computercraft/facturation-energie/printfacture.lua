handle = fs.open("disk/db.txt","r")
data = textutils.unserialise(handle.readAll())
handle.close()
prix = 0 -- prix du Gfe

p = peripheral.wrap("bottom")

function printprix(fe)
    return tostring(math.floor(fe/1000000000*prix))
end

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


for user,conso in pairs(data) do
    if user ~= "day" and user ~= "imosoft"then
        print("client : "..user)
        print("conso : "..printfe(conso))
        print("prix : "..printprix(conso))
        print("")
        p.newPage()
        p.setPageTitle("facture de "..user)
        p.setCursorPos(1,1)
        p.write("IMOSOFT ELECTRICITY")
        p.setCursorPos(1,3)
        p.write("client : "..user)
        p.setCursorPos(1,4)
        p.write("conso : "..printfe(conso))
        p.setCursorPos(1,5)
        p.write("prix du Gfe : "..prix)
        p.setCursorPos(1,6)
        p.write("jour "..tostring(data.day).." --> "..tostring(os.day()))
        p.setCursorPos(1,8)
        p.write("-------------------------")
        p.setCursorPos(1,10)
        p.write("Total NET a payer :")
        p.setCursorPos(1,11)
        p.write(printprix(conso))
        p.endPage()
    end
end

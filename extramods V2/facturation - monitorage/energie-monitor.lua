m = peripheral.wrap("monitor_1")
a = peripheral.wrap("Induction Matrix_1")--13roro
b = peripheral.wrap("Induction Matrix_3")--louloc
c = peripheral.wrap("Induction Matrix_2")--louino
f = peripheral.wrap("Induction Matrix_4")--latempete
g = peripheral.wrap("Induction Matrix_5")--alexxpro
h = peripheral.wrap("Induction Matrix_6")--kiesta07
d = peripheral.wrap("Induction Matrix_0")--total
local e

local function decotext(text)
m.setTextColor(colors.red)
m.setCursorPos(12,text)
m.write("DECO         ")
m.setTextColor(colors.white)
end

while true do
m.clear()
m.setBackgroundColor(colors.black)


--lecture des donnee de la diskette
local handle = assert(fs.open("disk2/vars", "r"), "Couldn't load vars")
local input = handle.readAll()
handle.close()
local data = textutils.unserialize(input)

--conso joueur
m.setTextColor(colors.white)
m.setCursorPos(1,1)
m.write("CONSO JOUEUR")
m.setTextColor(colors.yellow)
m.setCursorPos(1,2)
m.write("13roro ")
m.setTextColor(colors.green)
e = a.getOutput()/25
if e == 0 then
m.setTextColor(colors.red)
end
if e < 1000 then
 m.setCursorPos(12,2)
 m.write(a.getOutput()/25*10)
 m.setCursorPos(17,2)
 m.write(" RF/t                  ")
end
if e > 1000 then
 m.setCursorPos(12,2)
 m.write(a.getOutput()/25/100)
 m.setCursorPos(17,2)
 m.write("kRF/t                  ")
end
if e > 100000 then
 m.setCursorPos(12,2)
 m.write(a.getOutput()/25/100000)
 m.setCursorPos(17,2)
 m.write("mRF/t                  ")
end
data.consororo = e/1000000000+data.consororo

m.setTextColor(colors.yellow)
m.setCursorPos(1,3)
m.write("louloc")
m.setTextColor(colors.green)
e = b.getOutput()/25
if e == 0 then
m.setTextColor(colors.red)
end
if e < 1000 then
 m.setCursorPos(12,3)
 m.write(b.getOutput()/25*10)
 m.setCursorPos(17,3)
 m.write(" RF/t                  ")
end
if e > 1000 then
 m.setCursorPos(12,3)
 m.write(b.getOutput()/25/100)
 m.setCursorPos(17,3)
 m.write("kRF/t                  ")
end
if e > 100000 then
 m.setCursorPos(12,3)
 m.write(b.getOutput()/25/100000)
 m.setCursorPos(17,3)
 m.write("mRF/t                  ")
end
data.consolouloc = e/1000000000+data.consolouloc

m.setTextColor(colors.yellow)
m.setCursorPos(1,4)
m.write("louino")
m.setTextColor(colors.green)
e = c.getOutput()/25
if e == 0 then
m.setTextColor(colors.red)
end
if e < 1000 then
 m.setCursorPos(12,4)
 m.write(c.getOutput()/25*10)
 m.setCursorPos(17,4)
 m.write(" RF/t                  ")
end
if e > 1000 then
 m.setCursorPos(12,4)
 m.write(c.getOutput()/25/100)
 m.setCursorPos(17,4)
 m.write("kRF/t                  ")
end
if e > 100000 then
 m.setCursorPos(12,4)
 m.write(c.getOutput()/25/100000)
 m.setCursorPos(17,4)
 m.write("mRF/t                  ")
end
data.consolouino = e/1000000000+data.consolouino

m.setTextColor(colors.yellow)
m.setCursorPos(1,5)
m.write("latempete")
m.setTextColor(colors.green)
e = f.getOutput()/25
if e == 0 then
m.setTextColor(colors.red)
end
if e < 1000 then
 m.setCursorPos(12,5)
 m.write(f.getOutput()/25*10)
 m.setCursorPos(17,5)
 m.write(" RF/t                  ")
end
if e > 1000 then
 m.setCursorPos(12,5)
 m.write(f.getOutput()/25/100)
 m.setCursorPos(17,5)
 m.write("kRF/t                  ")
end
if e > 100000 then
 m.setCursorPos(12,5)
 m.write(f.getOutput()/25/100000)
 m.setCursorPos(17,5)
 m.write("mRF/t                  ")
end
data.consolatempete = e/1000000000+data.consolatempete

m.setTextColor(colors.yellow)
m.setCursorPos(1,6)
m.write("alexxpro")
m.setTextColor(colors.green)
e = g.getOutput()/25
if e == 0 then
m.setTextColor(colors.red)
end
if e < 1000 then
 m.setCursorPos(12,6)
 m.write(g.getOutput()/25*10)
 m.setCursorPos(17,6)
 m.write(" RF/t                  ")
end
if e > 1000 then
 m.setCursorPos(12,6)
 m.write(g.getOutput()/25/100)
 m.setCursorPos(17,6)
 m.write("kRF/t                  ")
end
if e > 100000 then
 m.setCursorPos(12,6)
 m.write(g.getOutput()/25/100000)
 m.setCursorPos(17,6)
 m.write("mRF/t                  ")
end
data.consoalexxpro = e/1000000000+data.consoalexxpro

m.setTextColor(colors.yellow)
m.setCursorPos(1,7)
m.write("none")
m.setTextColor(colors.green)
e = h.getOutput()/25
if e == 0 then
m.setTextColor(colors.red)
end
if e < 1000 then
 m.setCursorPos(12,7)
 m.write(h.getOutput()/25*10)
 m.setCursorPos(17,7)
 m.write(" RF/t                  ")
end
if e > 1000 then
 m.setCursorPos(12,7)
 m.write(h.getOutput()/25/100)
 m.setCursorPos(17,7)
 m.write("kRF/t                  ")
end
if e > 100000 then
 m.setCursorPos(12,7)
 m.write(h.getOutput()/25/100000)
 m.setCursorPos(17,7)
 m.write("mRF/t                  ")
end
data.consonone = e/1000000000+data.consonone

--*******************************************************************

--conso totale
m.setTextColor(colors.white)
m.setCursorPos(1,10)
m.write("CONSO TOTAL")
m.setTextColor(colors.green)
e = d.getOutput()/25
if e < 1000 then
 m.setCursorPos(14,10)
 m.write(d.getOutput()/25*10)
 m.setCursorPos(19,10)
 m.write(" RF/t                  ")
end
if e > 1000 then
 m.setCursorPos(14,10)
 m.write(d.getOutput()/25/100)
 m.setCursorPos(19,10)
 m.write("kRF/t                  ")
end
if e > 100000 then
 m.setCursorPos(14,10)
 m.write(d.getOutput()/25/100000)
 m.setCursorPos(19,10)
 m.write("mRF/t                  ")
end

--stockage
m.setTextColor(colors.white)
m.setCursorPos(1,11)
m.write("STOCKAGE")
m.setTextColor(colors.green)
e = d.getEnergy()/25
if e < 1000 then
 m.setCursorPos(14,11)
 m.write(d.getEnergy()/25*10)
 m.setCursorPos(19,11)
 m.write(" RF                  ")
end
if e > 1000 then
 m.setCursorPos(14,11)
 m.write(d.getEnergy()/25/100)
 m.setCursorPos(19,11)
 m.write("kRF                  ")
end
if e > 100000 then
 m.setCursorPos(14,11)
 m.write(d.getEnergy()/25/100000)
 m.setCursorPos(19,11)
 m.write("mRF                  ")
end
if e > 100000000 then
 m.setCursorPos(14,11)
 m.write(d.getEnergy()/25/100000000)
 m.setCursorPos(19,11)
 m.write("gRF                  ")
end
if e > 100000000000 then
 m.setCursorPos(14,11)
 m.write(d.getEnergy()/25/100000000000)
 m.setCursorPos(19,11)
 m.write("tRF                  ")
end

--charge
m.setTextColor(colors.white)
m.setCursorPos(1,12)
m.write("CHARGE")
m.setTextColor(colors.green)
e = d.getInput()/25
if e < 1000 then
 m.setCursorPos(14,12)
 m.write(d.getInput()/25*10)
 m.setCursorPos(19,12)
 m.write(" RF/t                  ")
end
if e > 1000 then
 m.setCursorPos(14,12)
 m.write(d.getInput()/25/100)
 m.setCursorPos(19,12)
 m.write("kRF/t                  ")
end
if e > 100000 then
 m.setCursorPos(14,12)
 m.write(d.getInput()/25/100000)
 m.setCursorPos(19,12)
 m.write("mRF/t                  ")
end

-- % stockage
e = d.getEnergy()*100/d.getMaxEnergy()
m.setTextColor(colors.purple)
m.setCursorPos(23,11)
m.write(e)
m.setCursorPos(28,11)
m.write("%              ")

-- sauvegarde des donner sur la disquette
local output = textutils.serialize(data)
local handle = assert(fs.open("disk2/vars", "w"), "Couldn't save vars")
handle.write(output)
handle.close()

--------- --roro = 2 --louloc = 3 --latempete = 5 --alexxpro = 6 --kiesta07 = 7
decotext(7)
--decotext(6)
---------

sleep(1)
end

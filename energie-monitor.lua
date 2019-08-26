m = peripheral.wrap("monitor_0")
a = peripheral.wrap("Matrice d'induction_0")--13roro
b = peripheral.wrap("Matrice d'induction_1")--alexxpro
c = peripheral.wrap("Matrice d'induction_2")--louino
d = peripheral.wrap("Matrice d'induction_3")--total
local e
 
while true do
m.clear()
m.setBackgroundColor(colors.black)
 
--conso joueur
m.setTextColor(colors.white)
m.setCursorPos(1,1)
m.write("CONSO JOUEUR")
m.setTextColor(colors.yellow)
m.setCursorPos(1,2)
m.write("13roro ")
m.setTextColor(colors.green)
e = a.getOutput()/25
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
m.setTextColor(colors.yellow)
m.setCursorPos(1,3)
m.write("alexxpro")
m.setTextColor(colors.green)
e = b.getOutput()/25
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
m.setTextColor(colors.yellow)
m.setCursorPos(1,4)
m.write("louino")
m.setTextColor(colors.green)
e = c.getOutput()/25
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
 
--conso totale
m.setTextColor(colors.white)
m.setCursorPos(1,6)
m.write("CONSO TOTAL")
m.setTextColor(colors.green)
e = d.getOutput()/25
if e < 1000 then
 m.setCursorPos(14,6)
 m.write(d.getOutput()/25*10)
 m.setCursorPos(19,6)
 m.write(" RF/t                  ")
end
if e > 1000 then
 m.setCursorPos(14,6)
 m.write(d.getOutput()/25/100)
 m.setCursorPos(19,6)
 m.write("kRF/t                  ")
end
if e > 100000 then
 m.setCursorPos(14,6)
 m.write(d.getOutput()/25/100000)
 m.setCursorPos(19,6)
 m.write("mRF/t                  ")
end
 
--stockage
m.setTextColor(colors.white)
m.setCursorPos(1,7)
m.write("STOCKAGE")
m.setTextColor(colors.green)
e = d.getEnergy()/25
if e < 1000 then
 m.setCursorPos(14,7)
 m.write(d.getEnergy()/25*10)
 m.setCursorPos(19,7)
 m.write(" RF                  ")
end
if e > 1000 then
 m.setCursorPos(14,7)
 m.write(d.getEnergy()/25/100)
 m.setCursorPos(19,7)
 m.write("kRF                  ")
end
if e > 100000 then
 m.setCursorPos(14,7)
 m.write(d.getEnergy()/25/100000)
 m.setCursorPos(19,7)
 m.write("mRF                  ")
end
if e > 100000000 then
 m.setCursorPos(14,7)
 m.write(d.getEnergy()/25/100000000)
 m.setCursorPos(19,7)
 m.write("gRF                  ")
end
if e > 100000000000 then
 m.setCursorPos(14,7)
 m.write(d.getEnergy()/25/100000000000)
 m.setCursorPos(19,7)
 m.write("tRF                  ")
end
 
--charge
m.setTextColor(colors.white)
m.setCursorPos(1,8)
m.write("CHARGE")
m.setTextColor(colors.green)
e = d.getInput()/25
if e < 1000 then
 m.setCursorPos(14,8)
 m.write(d.getInput()/25*10)
 m.setCursorPos(19,8)
 m.write(" RF/t                  ")
end
if e > 1000 then
 m.setCursorPos(14,8)
 m.write(d.getInput()/25/100)
 m.setCursorPos(19,8)
 m.write("kRF/t                  ")
end
if e > 100000 then
 m.setCursorPos(14,8)
 m.write(d.getInput()/25/100000)
 m.setCursorPos(19,8)
 m.write("mRF/t                  ")
end
 
-- % stockage
e = d.getEnergy()*100/d.getMaxEnergy()
m.setTextColor(colors.purple)
m.setCursorPos(23,7)
m.write(e)
m.setCursorPos(28,7)
m.write("%              ")
 
 
 
sleep(0.2)
end
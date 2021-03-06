local pro
local la
m = peripheral.wrap("monitor_0")
r = peripheral.wrap("Reactor Logic Adapter_0")
l = peripheral.wrap("Laser Amplifier_0")
 
m.setTextColor(colors.white)
m.clear()
 
while true do
 
--reacteur on?
m.setCursorPos(1,1)
m.setTextColor(colors.white)
m.write("reacteur : ")
if r.isIgnited() == true then
 m.setTextColor(colors.green)
 m.write("ON")
else
 m.setTextColor(colors.red)
 m.write("OFF")
end
--reacteur production
m.setCursorPos(1,2)
m.setTextColor(colors.white)
m.write("production : ")
m.setTextColor(colors.gray)
pro = r.getProducing()/25
if pro < 1000 then
 m.write(r.getProducing()/25)
 m.setCursorPos(17,2)
 m.write(" RF/t               ")
end
if pro > 1000 then
 m.setCursorPos(14,2)
 m.write(r.getProducing()/25/100)
 m.setCursorPos(17,2)
 m.write("kRF/t               ")
end
if pro > 100000 then
 m.setCursorPos(14,2)
 m.write(r.getProducing()/25/100000)
 m.setCursorPos(17,2)
 m.write("mRF/t               ")
end
--lazer enplifier storage
m.setCursorPos(1,3)
m.setTextColor(colors.white)
m.write("laser energie : ")
m.setTextColor(colors.gray)
la = l.getEnergy()/25
if la < 1000 then
 m.write(l.getEnergy()/25)
 m.setCursorPos(20,3)
 m.write(" RF                  ")
end
if la > 1000 then
 m.setCursorPos(17,3)
 m.write(l.getEnergy()/25/100)
 m.setCursorPos(20,3)
 m.write("kRF                  ")
end
if la > 100000 then
 m.setCursorPos(17,3)
 m.write(l.getEnergy()/25/100000)
 m.setCursorPos(20,3)
 m.write("mRF                  ")
end
if la > 100000000 then
 m.setCursorPos(17,3)
 m.write(l.getEnergy()/25/100000000)
 m.setCursorPos(20,3)
 m.write("gRF                  ")
end
--laser amplifier stat
 m.setCursorPos(1,4)
 m.setTextColor(colors.white)
 m.write("laser stat : ")
 m.setCursorPos(14,4)
if l.getEnergy()/25/100000000 > 1 then
 m.setTextColor(colors.yellow)
else
 m.setTextColor(colors.orange)
end
 m.write("CHARGE EN COUR")
if l.getEnergy() == 0 then
 m.setCursorPos(14,4)
 m.setTextColor(colors.red)
 m.write("DECHARGER         ")
end
if l.getEnergy() == l.getMaxEnergy() then
 m.setCursorPos(14,4)
 m.setTextColor(colors.green)
 m.write("CHARGEE           ")
 redstone.setOutput("back",true)
else
 redstone.setOutput("back",false)
end
 
--demarage reacteur
if r.isIgnited() == false then
 m.setCursorPos(9,12)
 m.setTextColor(colors.white)
 m.write("start reactor")
 if rs.getAnalogInput("right") ~= 0 then
  if l.getEnergy() == l.getMaxEnergy() then
   m.setCursorPos(1,9)
   m.write("demarage du reacteur")
   rs.setOutput("bottom", true)
   r.setInjectionRate(4)
   sleep(10)
   rs.setOutput("left", true)
   sleep(2)
   rs.setOutput("left", false)
   sleep(1)
   rs.setOutput("bottom", false)
   m.clear()
  else
   m.setCursorPos(1,9)
   m.setBackgroundColor(colors.red)
   m.setTextColor(colors.white)
   m.write("il y a pas asser d'energie")
   m.setCursorPos(1,10)
   m.write("dans les laser")
   m.setBackgroundColor(colors.black)
   sleep(5)
   m.clear()
  end
 end
end
if r.isIgnited() == true then
 m.setCursorPos(9,12)
 m.setTextColor(colors.yellow)
 m.write("stop  reactor")
 if rs.getAnalogInput("right") ~= 0 then
  if l.getEnergy() == l.getMaxEnergy() then
   m.setCursorPos(1,6)
   m.setTextColor(colors.white)
   m.write("arret en cours...")
   r.setInjectionRate(0)
   sleep(30)
   r.setInjectionRate(2)
   m.clear()
  else
   m.setCursorPos(1,6)
   m.setBackgroundColor(colors.red)
   m.setTextColor(colors.white)
   m.write("il est pas conseiller de")
   m.setCursorPos(1,7)
   m.write("stoper le reacteur alors que")
   m.setCursorPos(1,8)
   m.write("les laser sont pas full")
   m.setBackgroundColor(colors.black)
   sleep(5)
   m.clear()
  end
 end
end
 
 
 
--fin du programe
sleep(1)
end

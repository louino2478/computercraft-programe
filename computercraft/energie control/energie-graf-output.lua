m = peripheral.wrap("monitor_3")
e = peripheral.wrap("Induction Matrix_0")
local v=12
local r=0
local a1=12
local a2=12
local a3=12
local a4=12
local a5=12
local a6=12
local a7=12
local a8=12
local a9=12
local a10=12
local a11=12
local a12=12
local a13=12
local a14=12
local a15=12
local a16=12
local a17=12
local a18=12
local a19=12
local a20=12
local a21=12
local a22=12
local a23=12
local a24=12
local a25=12
local a26=12
local a27=12
local a28=12




while true do
m.setBackgroundColor(colors.black)
m.clear()


--cacule de la valeur
r=e.getOutput()*12
r=r/e.getTransferCap()

if (r>=0) and (r<1) then
v=12
end
if (r>1) and (r<2) then
v=11
end
if (r>2) and (r<3) then
v=10
end
if (r>3) and (r<4) then
v=9
end
if (r>4) and (r<5) then
v=8
end
if (r>5) and (r<6) then
v=7
end
if (r>6) and (r<7) then
v=6
end
if (r>7) and (r<8) then
v=5
end
if (r>8) and (r<9) then
v=4
end
if (r>9) and (r<10) then
v=3
end
if (r>10) and (r<11) then
v=2
end
if (r>11) and (r>13) then
v=1
end

--ecriture du grafique
m.setCursorPos(1,a1)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(2,a2)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(3,a3)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(4,a4)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(5,a5)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(6,a6)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(7,a7)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(8,a8)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(9,a9)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(10,a10)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(11,a11)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(12,a12)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(13,a13)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(14,a14)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(15,a15)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(16,a16)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(17,a17)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(18,a18)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(19,a19)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(20,a20)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(21,a21)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(22,a22)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(23,a23)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(24,a24)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(25,a25)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(26,a26)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(27,a27)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(28,a28)
m.setBackgroundColor(colors.red)
m.write(" ")
m.setCursorPos(29,v)
m.setBackgroundColor(colors.red)
m.write(" ")

--decalage des nonbre dans les variable
a1=a2
a2=a3
a3=a4
a4=a5
a5=a6
a6=a7
a7=a8
a8=a9
a9=a10
a10=a11
a11=a12
a12=a13
a13=a14
a14=a15
a15=a16
a16=a17
a17=a18
a18=a19
a19=a20
a20=a21
a21=a22
a22=a23
a23=a24
a24=a25
a25=a26
a26=a27
a27=a28
a28=v

--noms
m.setBackgroundColor(colors.black)
m.setTextColor(colors.blue)
m.setCursorPos(12,1)
m.write("output")
m.setTextColor(colors.white)

sleep(60)
end

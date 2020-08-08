r = peripheral.wrap("left")
m = peripheral.wrap("right")

img_reac_off = paintutils.loadImage("img/reactor_off.nfp")
img_reac_on = paintutils.loadImage("img/reactor_on.nfp")

local RF
local oldRF = 0
local RL

term.redirect(m)


while true do
    RF = r.getEnergyStored() * 100
    RF = RF / r.getEnergyCapacity()
    RL = r.getControlRodLevel(1)
    --print("RL = "..RL.."  |  RF = "..RF)
    
    if RF < 50 and RL ~= 0 then
        RL = RL-1
    end
    
    if RF > 55 and RL ~= 100 then
        RL = RL+1
    end
    
    if RF < 55 and RF > 50 then
    
        if RF > oldRF then
            RL = RL+1
        end
        if RF < oldRF then
            RL = RL-1
        end
    end
    
	if RF < 5 then
		RL = 0
	end
	
	if RF > 95 then
		RL = 100
	end
	
    r.setAllControlRodLevels(RL)
    oldRF = RF
    -------------------------------
    term.setBackgroundColor(colors.black)
    
    m.setCursorPos(1,1)
    m.setBackgroundColor(colors.black)
    m.setTextColor(colors.white)
    m.clear()
	
    m.setCursorPos(12,1)
    m.write("REACTEUR")
    
    
    if r.getActive() == true then
        paintutils.drawImage(img_reac_on, 2, 2)
    else
        paintutils.drawImage(img_reac_off, 2, 2)
    end
    
    
    m.setCursorPos(10,2)
    m.setBackgroundColor(colors.white)
    m.setTextColor(colors.black)
    m.write(" Buffer            ")
    m.setCursorPos(10,3)
    m.write(" ")
    m.setCursorPos(28,3)
    m.write(" ")
    m.setCursorPos(10,4)
    m.write("                   ")
    m.setCursorPos(11,4)
    m.write(RF.."%")
    local var = r.getEnergyStored()
    local mvar = r.getEnergyCapacity()
    var = var * 16
    var = var / mvar
    m.setCursorPos(var+11, 3)
    m.setBackgroundColor(colors.red)
    m.write(" ")
    while (var >= 1) do
        var  = var - 1
        m.setCursorPos(var+11,3)
        m.write(" ")
    end
	
	m.setCursorPos(10,6)
    m.setBackgroundColor(colors.white)
    m.setTextColor(colors.black)
    m.write(" Rod Level         ")
    m.setCursorPos(10,7)
    m.write(" ")
    m.setCursorPos(28,7)
    m.write(" ")
    m.setCursorPos(10,8)
    m.write("                   ")
    m.setCursorPos(11,8)
    m.write(r.getControlRodLevel(1).."%")
    local var = r.getControlRodLevel(1)
    local mvar = 100
    var = var * 16
    var = var / mvar
    m.setCursorPos(var+11, 7)
    m.setBackgroundColor(colors.red)
    m.write(" ")
    while (var >= 1) do
        var  = var - 1
        m.setCursorPos(var+11,7)
        m.write(" ")
    end
	
	m.setCursorPos(4,10)
	m.setBackgroundColor(colors.gray)
	m.setTextColor(colors.white)
	m.write("kRF/t")
	m.setCursorPos(4,11)
	m.write("     ")
	m.setCursorPos(4,11)
	m.write(r.getEnergyProducedLastTick()/1000)
	m.setCursorPos(9,11)
	m.setBackgroundColor(colors.black)
	m.write("                   ")
	
	m.setCursorPos(10,10)
	m.setBackgroundColor(colors.gray)
	m.setTextColor(colors.white)
	m.write("Core°C")
	m.setCursorPos(10,11)
	m.write("      ")
	m.setCursorPos(10,11)
	m.write(r.getFuelTemperature())
	m.setCursorPos(16,11)
	m.setBackgroundColor(colors.black)
	m.write("                   ")
	
	m.setCursorPos(17,10)
	m.setBackgroundColor(colors.gray)
	m.setTextColor(colors.white)
	m.write("Casing°C")
	m.setCursorPos(17,11)
	m.write("        ")
	m.setCursorPos(17,11)
	m.write(r.getCasingTemperature())
	m.setCursorPos(25,11)
	m.setBackgroundColor(colors.black)
	m.write("                   ")
	
	
    sleep(1)
end

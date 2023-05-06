im = peripheral.wrap("inductionPort_0")
m = peripheral.wrap("right")
local input = {}
local output = {}
local i
local n
m.setTextScale(0.5)
local sizew, sizeh = m.getSize()
i = 0
while i < sizew+1 do
  i = i + 1
  input[i] = 0
  output[i] = 0
end
while true do
  i = 0
  while i < sizew+1 do
    i = i + 1
    input[i] = input[i+1]
    output[i] = output[i+1]
  end
  input[sizew+1] = math.floor(im.getLastInput() * (sizeh/2-1) / im.getTransferCap())
  output[sizew+1] = math.floor(im.getLastOutput() * (sizeh/2-1) / im.getTransferCap())
  rawinput=mekanismEnergyHelper.joulesToFE(im.getLastInput())
  rawoutput=mekanismEnergyHelper.joulesToFE(im.getLastOutput())
  
  m.setBackgroundColor(colors.black)
  m.clear()
  i = 0
  while i < sizew+1 do
    i = i + 1
    m.setCursorPos(i,(sizeh/2+1) + input[i])
    m.setBackgroundColor(colors.green)
    m.write(" ")
    n = input[i]
    while n ~= 0 do
      n = n - 1
      m.setCursorPos(i, (sizeh/2+1) + n)
      m.setBackgroundColor(colors.green)
      m.write(" ")
    end
    m.setCursorPos(i, (sizeh/2) - output[i])
    m.setBackgroundColor(colors.red)
    m.write(" ")
    n = output[i]
    while n ~= 0 do
      n = n - 1
      m.setCursorPos(i, (sizeh/2) - n)
      m.setBackgroundColor(colors.red)
      m.write(" ")
    end
    m.setCursorPos(1,sizeh/2+1)
    m.setBackgroundColor(colors.green)
    m.write("input  "..(rawinput/1000).."kFE/t")
    m.setCursorPos(1,sizeh/2)
    m.setBackgroundColor(colors.red)
    m.write("output  "..(rawoutput/1000).."kFE/t")
  end
  sleep(10)
end

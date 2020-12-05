im = peripheral.wrap("left")
m = peripheral.wrap("monitor_0")
local input = {}
local output = {}
local i
local n
m.setTextScale(0.5)
i = 0
while i < 80 do
  i = i + 1
  input[i] = 0
  output[i] = 0
end
while true do
  i = 0
  while i < 80 do
    i = i + 1
    input[i] = input[i+1]
    output[i] = output[i+1]
  end
  input[80] = math.floor(im.getInput() * 11 / im.getTransferCap())
  output[80] = math.floor(im.getOutput() * 11 / im.getTransferCap())
  
  m.setBackgroundColor(colors.black)
  m.clear()
  i = 0
  while i < 80 do
    i = i + 1
    m.setCursorPos(i,13 + input[i])
    m.setBackgroundColor(colors.green)
    m.write(" ")
    n = input[i]
    while n ~= 0 do
      n = n - 1
      m.setCursorPos(i, 13 + n)
      m.setBackgroundColor(colors.green)
      m.write(" ")
    end
    m.setCursorPos(i, 12 - output[i])
    m.setBackgroundColor(colors.red)
    m.write(" ")
    n = output[i]
    while n ~= 0 do
      n = n - 1
      m.setCursorPos(i, 12 - n)
      m.setBackgroundColor(colors.red)
      m.write(" ")
    end
  end
  sleep(0.5)
end

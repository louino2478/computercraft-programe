m = peripheral.find("monitor")
 
while true do
  m.clear()
  m.setCursorPos(2,2)
  m.write("J")
  m.write(os.day()-1)
  m.setCursorPos(2,3)
  m.write(textutils.formatTime(os.time(), true))
  m.setCursorPos(2,4)
  if (rs.getInput("back") == true) then
    m.write("pluie")
  end
  sleep(0.3)
end

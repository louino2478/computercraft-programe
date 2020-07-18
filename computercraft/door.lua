p = peripheral.wrap("left")
rs.setOutput("bottom",true)
function open()
  p.playNote("harp",100,1)
  sleep(0.1)
  p.playNote("harp",100,10)
  rs.setOutput("bottom",false)
  sleep(1)
  p.playNote("hat",1)
  sleep(1)
  p.playNote("hat",1)
  sleep(1)
  p.playNote("hat",1)
  sleep(1)
  p.playNote("hat",1)
  sleep(1)
  p.playNote("hat",1)
  sleep(1)
  p.playNote("harp",100,1)
  rs.setOutput("bottom",true)
end

function close()
  p.playNote("harp",1)
  sleep(0.1)
  p.playNote("harp",1)
end

function check()
  if disk.getID("top") == 5 then
    disk.eject("top")
    open()
  else
    disk.eject("top")
    close()
  end
end

while true do
  if (disk.isPresent("top")) then
    disk.eject("top")
  end
  os.pullEvent("disk")
  check()
end

local data = {}
 
data.consororo = 0
data.consolouloc = 0
data.consolouino = 0
data.consoalexxpro = 0
data.date = os.day()
 
local output = textutils.serialize(data)
local handle = assert(fs.open("disk/vars.txt", "w"), "Couldn't save vars")
handle.write(output)
handle.close()

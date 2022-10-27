local data = {}

data["imosoft"] = 0
data["creeper"] = 0
data["voxrey"] = 0
data.day = os.day()

local handle = fs.open("disk/db.txt","w")
handle.write(textutils.serialise(data))
handle.close()

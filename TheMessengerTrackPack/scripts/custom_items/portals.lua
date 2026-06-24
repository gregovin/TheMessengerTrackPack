Portals = class(GetStorageItem())

function Portals:Init(name,code)
    self:createItem(name)
    self.code = code
    self["1"] = {open = false, dst = ""}
    self["2"] = {open = false, dst = ""}
    self["3"] = {open = false, dst = ""}
    self["4"] = {open = false, dst = ""}
    self["5"] = {open = false, dst = ""}
    self["6"] = {open = false, dst = ""}
end

function Portals:OpenPortal(idx)
    if self[idx] then
        self[idx].open = true
    else
        return false, "Index out of range"
    end
end

function Portals:SetDestination(idx,dst)
    if self[idx] then
        self[idx].dst = dst
    else
        return false, "Index out of range"
    end
end

function Portals:IsOpen(idx)
    return self[idx] and self[idx].open
end

function Portals:GetDst(idx)
    return self[idx] and self[idx].dst
end

function Portals:save()
    local saveData = {}
    saveData["1_open"] = self["1"].open
    saveData["1_dst"] = self["1"].dst
    saveData["2_open"] = self["2"].open
    saveData["2_dst"] = self["2"].dst
    saveData["3_open"] = self["3"].open
    saveData["3_dst"] = self["3"].dst
    saveData["4_open"] = self["4"].open
    saveData["4_dst"] = self["4"].dst
    saveData["5_open"] = self["5"].open
    saveData["5_dst"] = self["5"].dst
    saveData["6_open"] = self["6"].open
    saveData["6_dst"] = self["6"].dst
    return saveData
end

function Portals:load(data)
    self["1"].open = data["1_open"]
    self["1"].dst = data["1_dst"]
    self["2"].open = data["2_open"]
    self["2"].dst = data["2_dst"]
    self["3"].open = data["3_open"]
    self["3"].dst = data["3_dst"]
    self["4"].open = data["4_open"]
    self["4"].dst = data["4_dst"]
    self["5"].open = data["5_open"]
    self["5"].dst = data["5_dst"]
    self["6"].open = data["6_open"]
    self["6"].dst = data["6_dst"]
    return true
end
Transitions = class(GetStorageItem())

function Transitions:Init(name,code,states)
    self:createItem(name)
    self.code = code
    self.states = states or {}
end

function Transitions:SetTransition(origin,dst)
    self.states[origin] = dst
end

function Transitions:GetTransition(origin)
    return self.states[origin]
end

function Transitions:save()
    return self.states
end

function Transitions:load(data)
    self.states = data
    return true
end
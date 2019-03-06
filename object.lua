local object = {}

function object.new(self, o)
    o = o or {}
    self.__index = self
    setmetatable(o, self)
    return o
end

return object

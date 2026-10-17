---@class User
---@field name string
---@field email string
---@field display string
---@field metadata {[string]: any}
local User = {}
User.__index = User

---@param name string
---@param email string
function User.new(name, email)
    local self = {}
    self.name = name:lower()
    self.email = email
    self.display = name
    self.metadata = {}

    return setmetatable(self, User)
end

---@param name string
---@param value any
function User:setMetaData(name, value)
    self.metadata[name] = value
end

---@param name string
---@return any value
function User:getMetaData(name)
    local metadata = self.metadata[name]
    if metadata then
        return metadata
    else
        print('User does not have metadata "'..name..'".')
        return nil
    end
end

return User
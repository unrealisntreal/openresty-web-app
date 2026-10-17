local User = require("server.user.user")

---@class UserService
local UserService = {}

---@param name string
---@param email string
function UserService:addUser(name, email)
    local user = User.new(name, email)
    user:setMetaData("banned", false)
    user:setMetaData("points", 100)
end

return UserService
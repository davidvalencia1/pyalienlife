---@meta
---@diagnostic disable

--$Factorio 1.1.68
--$Overlay 5
--$Section LuaVoidEnergySourcePrototype
-- This file is automatically generated. Edits will be overwritten.

---Prototype of a void energy source.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaVoidEnergySourcePrototype.html)
---@class LuaVoidEnergySourcePrototype:LuaObject
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaVoidEnergySourcePrototype.html#LuaVoidEnergySourcePrototype.emissions)
---@field emissions double 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaVoidEnergySourcePrototype.html#LuaVoidEnergySourcePrototype.object_name)
---@field object_name string 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaVoidEnergySourcePrototype.html#LuaVoidEnergySourcePrototype.render_no_network_icon)
---@field render_no_network_icon boolean 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaVoidEnergySourcePrototype.html#LuaVoidEnergySourcePrototype.render_no_power_icon)
---@field render_no_power_icon boolean 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaVoidEnergySourcePrototype.html#LuaVoidEnergySourcePrototype.valid)
---@field valid boolean 
local LuaVoidEnergySourcePrototype={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaVoidEnergySourcePrototype.html#LuaVoidEnergySourcePrototype.help)
---@return string
help=function()end,
}


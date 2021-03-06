--[[
  EMS API Documentation
 
  Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 
  OpenAPI spec version: 0.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- channel_name class
local channel_name = {}
local channel_name_mt = {
	__name = "channel_name";
	__index = channel_name;
}

local function cast_channel_name(t)
	return setmetatable(t, channel_name_mt)
end

local function new_channel_name()
	return cast_channel_name({
	})
end

return {
	cast = cast_channel_name;
	new = new_channel_name;
}

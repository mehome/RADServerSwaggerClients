--[[
  EMS API Documentation
 
  Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 
  OpenAPI spec version: 0.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- push_data_object_aps class
local push_data_object_aps = {}
local push_data_object_aps_mt = {
	__name = "push_data_object_aps";
	__index = push_data_object_aps;
}

local function cast_push_data_object_aps(t)
	return setmetatable(t, push_data_object_aps_mt)
end

local function new_push_data_object_aps(alert, badge, sound)
	return cast_push_data_object_aps({
		["alert"] = alert;
		["badge"] = badge;
		["sound"] = sound;
	})
end

return {
	cast = cast_push_data_object_aps;
	new = new_push_data_object_aps;
}

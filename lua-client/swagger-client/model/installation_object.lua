--[[
  EMS API Documentation
 
  Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 
  OpenAPI spec version: 0.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- installation_object class
local installation_object = {}
local installation_object_mt = {
	__name = "installation_object";
	__index = installation_object;
}

local function cast_installation_object(t)
	return setmetatable(t, installation_object_mt)
end

local function new_installation_object(_id, device_token, device_type, _meta, channels)
	return cast_installation_object({
		["_id"] = _id;
		["deviceToken"] = device_token;
		["deviceType"] = device_type;
		["_meta"] = _meta;
		["channels"] = channels;
	})
end

return {
	cast = cast_installation_object;
	new = new_installation_object;
}

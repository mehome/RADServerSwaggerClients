--[[
  EMS API Documentation
 
  Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 
  OpenAPI spec version: 0.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- edge_module_updated_object class
local edge_module_updated_object = {}
local edge_module_updated_object_mt = {
	__name = "edge_module_updated_object";
	__index = edge_module_updated_object;
}

local function cast_edge_module_updated_object(t)
	return setmetatable(t, edge_module_updated_object_mt)
end

local function new_edge_module_updated_object(updated)
	return cast_edge_module_updated_object({
		["updated"] = updated;
	})
end

return {
	cast = cast_edge_module_updated_object;
	new = new_edge_module_updated_object;
}

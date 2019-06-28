--[[
  EMS API Documentation
 
  Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 
  OpenAPI spec version: 0.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

--package swagger-client

local http_request = require "http.request"
local http_util = require "http.util"
local dkjson = require "dkjson"
local basexx = require "basexx"

-- model import
local swagger-client_edge_module_added_object = require "swagger-client.model.edge_module_added_object"
local swagger-client_edge_module_object = require "swagger-client.model.edge_module_object"
local swagger-client_edge_module_resource_added_object = require "swagger-client.model.edge_module_resource_added_object"
local swagger-client_edge_module_resource_object = require "swagger-client.model.edge_module_resource_object"
local swagger-client_edge_module_resource_updated_object = require "swagger-client.model.edge_module_resource_updated_object"
local swagger-client_edge_module_updated_object = require "swagger-client.model.edge_module_updated_object"
local swagger-client_edge_module_add_object = require "swagger-client.model.edge_module_add_object"
local swagger-client_edge_module_resource_add_object = require "swagger-client.model.edge_module_resource_add_object"
local swagger-client_edge_module_resource_update_object = require "swagger-client.model.edge_module_resource_update_object"
local swagger-client_edge_module_update_object = require "swagger-client.model.edge_module_update_object"
local swagger-client_fields_edge_module_object = require "swagger-client.model.fields_edge_module_object"

local edge_modules_api = {}
local edge_modules_api_mt = {
	__name = "edge_modules_api";
	__index = edge_modules_api;
}

local function new_edge_modules_api(host, basePath, schemes)
	local schemes_map = {}
	for _,v in ipairs(schemes) do
		schemes_map[v] = v
	end
	local default_scheme = schemes_map.https or schemes_map.http
	return setmetatable({
		host = host;
		basePath = basePath or "http://localhost:8080";
		schemes = schemes_map;
		default_scheme = default_scheme;
		http_username = nil;
		http_password = nil;
		api_key = {};
		access_token = nil;
	}, edge_modules_api_mt)
end

function edge_modules_api:get_module(mname, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules/%s",
			self.basePath, mname);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_edge_module_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function edge_modules_api:get_module_resource(mname, name, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules/%s/resources/%s",
			self.basePath, mname, name);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_edge_module_resource_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function edge_modules_api:get_module_resources(mname, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules/%s/resources",
			self.basePath, mname);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		for _, ob in ipairs(result) do
			swagger-client_edge_module_resource_object.cast(ob)
		end
		return result, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function edge_modules_api:get_modules(x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		for _, ob in ipairs(result) do
			swagger-client_edge_module_object.cast(ob)
		end
		return result, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function edge_modules_api:get_modules_fields(x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules/fields",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_fields_edge_module_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function edge_modules_api:get_resources(x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules/resources",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		for _, ob in ipairs(result) do
			swagger-client_edge_module_resource_object.cast(ob)
		end
		return result, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function edge_modules_api:get_resources_fields(x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules/resources/fields",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_fields_edge_module_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function edge_modules_api:register_module(body, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")
	-- TODO: create a function to select proper accept
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_content_type = { "application/json" }
	req.headers:upsert("accept", "application/json")

	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end
	req:set_body(dkjson.encode(body))


	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_edge_module_added_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function edge_modules_api:register_module_resource(mname, body, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules/%s/resources",
			self.basePath, mname);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")
	-- TODO: create a function to select proper accept
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_content_type = { "application/json" }
	req.headers:upsert("accept", "application/json")

	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end
	req:set_body(dkjson.encode(body))


	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_edge_module_resource_added_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function edge_modules_api:unregister_module(mname, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules/%s",
			self.basePath, mname);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "DELETE")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function edge_modules_api:unregister_module_resource(mname, name, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules/%s/resources/%s",
			self.basePath, mname, name);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "DELETE")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function edge_modules_api:update_module(mname, body, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules/%s",
			self.basePath, mname);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	-- TODO: create a function to select proper accept
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_content_type = { "application/json" }
	req.headers:upsert("accept", "application/json")

	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end
	req:set_body(dkjson.encode(body))


	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_edge_module_updated_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function edge_modules_api:update_module_resource(mname, name, body, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/edgemodules/%s/resources/%s",
			self.basePath, mname, name);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	-- TODO: create a function to select proper accept
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_content_type = { "application/json" }
	req.headers:upsert("accept", "application/json")

	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end
	req:set_body(dkjson.encode(body))


	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_edge_module_resource_updated_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

return {
	new = new_edge_modules_api;
}


note
 description:"[
		EMS API Documentation
 		Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
  		OpenAPI spec version: 0.0.0
 	    

  	NOTE: This class is auto generated by the swagger code generator program.

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel swagger codegen", "src=https://github.com/swagger-api/swagger-codegen.git", "protocol=uri"

class
	EDGEMODULES_API

inherit

    API_I


feature -- API Access


	module (mname: STRING_32; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable EDGE_MODULE_OBJECT
			-- Get Module
			--  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
			-- 
			-- argument: mname Is the unique EMS EdgeModule identifier (required)
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result EDGE_MODULE_OBJECT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/edgemodules/{mname}"
			l_path.replace_substring_all ("{"+"mname"+"}", api_client.url_encode (mname.out))

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { EDGE_MODULE_OBJECT } l_response.data ({ EDGE_MODULE_OBJECT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	module_resource (mname: STRING_32; name: STRING_32; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable EDGE_MODULE_RESOURCE_OBJECT
			-- Get EdgeModule Resource
			--  |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.
			-- 
			-- argument: mname Is the unique EMS EdgeModule identifier (required)
			-- 
			-- argument: name Is the unique EMS EdgeModule Resource name (required)
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result EDGE_MODULE_RESOURCE_OBJECT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/edgemodules/{mname}/resources/{name}"
			l_path.replace_substring_all ("{"+"mname"+"}", api_client.url_encode (mname.out))
			l_path.replace_substring_all ("{"+"name"+"}", api_client.url_encode (name.out))

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { EDGE_MODULE_RESOURCE_OBJECT } l_response.data ({ EDGE_MODULE_RESOURCE_OBJECT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	module_resources (mname: STRING_32; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable LIST [EDGE_MODULE_RESOURCE_OBJECT]
			-- Get EdgeModule Resources
			--  |      Used to retrieve all data from the resources of an EdgeModule.
			-- 
			-- argument: mname Is the unique EMS EdgeModule identifier (required)
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result LIST [EDGE_MODULE_RESOURCE_OBJECT]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/edgemodules/{mname}/resources"
			l_path.replace_substring_all ("{"+"mname"+"}", api_client.url_encode (mname.out))

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { LIST [EDGE_MODULE_RESOURCE_OBJECT] } l_response.data ({ LIST [EDGE_MODULE_RESOURCE_OBJECT] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	modules (x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable LIST [EDGE_MODULE_OBJECT]
			-- Get Module
			--  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result LIST [EDGE_MODULE_OBJECT]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/edgemodules"

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { LIST [EDGE_MODULE_OBJECT] } l_response.data ({ LIST [EDGE_MODULE_OBJECT] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	modules_fields (x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable FIELDS_EDGE_MODULE_OBJECT
			-- Get Fields
			--  |      Used to retrieve all the &#x60;field names&#x60; of the EMS EdgeModule (including the custom fields).
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result FIELDS_EDGE_MODULE_OBJECT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/edgemodules/fields"

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { FIELDS_EDGE_MODULE_OBJECT } l_response.data ({ FIELDS_EDGE_MODULE_OBJECT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	register_module (body: EDGE_MODULE_ADD_OBJECT; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable EDGE_MODULE_ADDED_OBJECT
			-- Add Module
			--  |      Used to add a new &#x60;EdgeModule&#x60; object to the EMS database.
			-- 
			-- argument: body EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} (required)
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result EDGE_MODULE_ADDED_OBJECT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/edgemodules"

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/json">>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Post", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { EDGE_MODULE_ADDED_OBJECT } l_response.data ({ EDGE_MODULE_ADDED_OBJECT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	register_module_resource (mname: STRING_32; body: EDGE_MODULE_RESOURCE_ADD_OBJECT; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable EDGE_MODULE_RESOURCE_ADDED_OBJECT
			-- Add Module Resource
			--  |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.
			-- 
			-- argument: mname Is the unique EMS EdgeModule identifier (required)
			-- 
			-- argument: body EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} (required)
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result EDGE_MODULE_RESOURCE_ADDED_OBJECT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/edgemodules/{mname}/resources"
			l_path.replace_substring_all ("{"+"mname"+"}", api_client.url_encode (mname.out))

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/json">>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Post", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { EDGE_MODULE_RESOURCE_ADDED_OBJECT } l_response.data ({ EDGE_MODULE_RESOURCE_ADDED_OBJECT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	resources (x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable LIST [EDGE_MODULE_RESOURCE_OBJECT]
			-- Get EdgeModules Resources
			--  |      Used to retrieve all data from the resources of all EdgeModules.
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result LIST [EDGE_MODULE_RESOURCE_OBJECT]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/edgemodules/resources"

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { LIST [EDGE_MODULE_RESOURCE_OBJECT] } l_response.data ({ LIST [EDGE_MODULE_RESOURCE_OBJECT] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	resources_fields (x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable FIELDS_EDGE_MODULE_OBJECT
			-- Get Resource Fields
			--  |      Used to retrieve the &#x60;field names&#x60; of all the resources of the EMS EdgeModule (including the custom fields).
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result FIELDS_EDGE_MODULE_OBJECT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/edgemodules/resources/fields"

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { FIELDS_EDGE_MODULE_OBJECT } l_response.data ({ FIELDS_EDGE_MODULE_OBJECT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	unregister_module (mname: STRING_32; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32)
			-- Delete Module
			--  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
			-- 
			-- argument: mname Is the unique EMS EdgeModule identifier (required)
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/edgemodules/{mname}"
			l_path.replace_substring_all ("{"+"mname"+"}", api_client.url_encode (mname.out))

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Delete", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	unregister_module_resource (mname: STRING_32; name: STRING_32; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32)
			-- Delete Module Resource
			--  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
			-- 
			-- argument: mname Is the unique EMS EdgeModule identifier (required)
			-- 
			-- argument: name Is the unique EMS EdgeModule Resource name (required)
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/edgemodules/{mname}/resources/{name}"
			l_path.replace_substring_all ("{"+"mname"+"}", api_client.url_encode (mname.out))
			l_path.replace_substring_all ("{"+"name"+"}", api_client.url_encode (name.out))

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Delete", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	update_module (mname: STRING_32; body: EDGE_MODULE_UPDATE_OBJECT; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable EDGE_MODULE_UPDATED_OBJECT
			-- Update Module
			--  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
			-- 
			-- argument: mname Is the unique EMS EdgeModule identifier (required)
			-- 
			-- argument: body EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} (required)
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result EDGE_MODULE_UPDATED_OBJECT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/edgemodules/{mname}"
			l_path.replace_substring_all ("{"+"mname"+"}", api_client.url_encode (mname.out))

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/json">>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Put", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { EDGE_MODULE_UPDATED_OBJECT } l_response.data ({ EDGE_MODULE_UPDATED_OBJECT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	update_module_resource (mname: STRING_32; name: STRING_32; body: EDGE_MODULE_RESOURCE_UPDATE_OBJECT; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable EDGE_MODULE_RESOURCE_UPDATED_OBJECT
			-- Update Module Resource
			--  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
			-- 
			-- argument: mname Is the unique EMS EdgeModule identifier (required)
			-- 
			-- argument: name Is the unique EMS EdgeModule Resource name (required)
			-- 
			-- argument: body EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;} (required)
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result EDGE_MODULE_RESOURCE_UPDATED_OBJECT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/edgemodules/{mname}/resources/{name}"
			l_path.replace_substring_all ("{"+"mname"+"}", api_client.url_encode (mname.out))
			l_path.replace_substring_all ("{"+"name"+"}", api_client.url_encode (name.out))

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/json">>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Put", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { EDGE_MODULE_RESOURCE_UPDATED_OBJECT } l_response.data ({ EDGE_MODULE_RESOURCE_UPDATED_OBJECT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	


end

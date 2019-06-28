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
	GROUPS_API

inherit

    API_I


feature -- API Access


	add_group (body: GROUP_ADD_OBJECT; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32)
			-- Add Group
			--  |      Used to add a new &#x60;Group&#x60; object to the EMS database.
			-- 
			-- argument: body Object to sign up a new EMS User in the EMS Server (required)
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
			l_request.set_body(body)
			l_path := "/groups"

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
			l_response := api_client.call_api (l_path, "Post", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	delete_group (item: STRING_32; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32)
			-- Delete Group
			--  |      Used to delete a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
			-- 
			-- argument: item A group name (required)
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
			
			l_path := "/groups/{item}"
			l_path.replace_substring_all ("{"+"item"+"}", api_client.url_encode (item.out))

			if attached x__embarcadero__application__id as l_x__embarcadero__application__id then
				l_request.add_header(l_x__embarcadero__application__id.out,"X-Embarcadero-Application-Id");
			end
			if attached x__embarcadero__app__secret as l_x__embarcadero__app__secret then
				l_request.add_header(l_x__embarcadero__app__secret.out,"X-Embarcadero-App-Secret");
			end
			if attached x__embarcadero__master__secret as l_x__embarcadero__master__secret then
				l_request.add_header(l_x__embarcadero__master__secret.out,"X-Embarcadero-Master-Secret");
			end

			if attached {STRING} api_client.select_header_accept (<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Delete", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	group (item: STRING_32; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable GROUP_OBJECT
			-- Get Group
			--  |      Used to retrieve all data from a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
			-- 
			-- argument: item A group name (required)
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result GROUP_OBJECT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/groups/{item}"
			l_path.replace_substring_all ("{"+"item"+"}", api_client.url_encode (item.out))

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
			elseif attached { GROUP_OBJECT } l_response.data ({ GROUP_OBJECT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	group_fields (x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable LIST [FIELD_GROUP_OBJECT]
			-- Get Fields
			--  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Group (including the custom fields).
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result LIST [FIELD_GROUP_OBJECT]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/groups/fields"

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
			elseif attached { LIST [FIELD_GROUP_OBJECT] } l_response.data ({ LIST [FIELD_GROUP_OBJECT] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	groups (x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32; skip: REAL_32; limit: REAL_32; order: REAL_32; where: STRING_32): detachable LIST [GROUP_OBJECT]
			-- Get Groups
			--  |      Used to retrieve all data from &#x60;Groups&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- argument: skip users skipped (optional)
			-- 
			-- argument: limit maximum number of results to return (optional)
			-- 
			-- argument: order order ascending or descending (asc, desc) (optional)
			-- 
			-- argument: where filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)
			-- 
			-- 
			-- Result LIST [GROUP_OBJECT]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/groups"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "skip", skip));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "limit", limit));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "order", order));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "where", where));

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
			elseif attached { LIST [GROUP_OBJECT] } l_response.data ({ LIST [GROUP_OBJECT] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	update_group (item: STRING_32; body: UPDATE_GROUP_OBJECT; x__embarcadero__application__id: STRING_32; x__embarcadero__app__secret: STRING_32; x__embarcadero__master__secret: STRING_32): detachable UPDATED_GROUP_OBJECT
			-- Update Group
			--  |      Used to update a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
			-- 
			-- argument: item A group name (required)
			-- 
			-- argument: body Object to sign up a new EMS User in the EMS Server (required)
			-- 
			-- argument: x__embarcadero__application__id  (optional)
			-- 
			-- argument: x__embarcadero__app__secret  (optional)
			-- 
			-- argument: x__embarcadero__master__secret  (optional)
			-- 
			-- 
			-- Result UPDATED_GROUP_OBJECT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/groups/{item}"
			l_path.replace_substring_all ("{"+"item"+"}", api_client.url_encode (item.out))

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
			elseif attached { UPDATED_GROUP_OBJECT } l_response.data ({ UPDATED_GROUP_OBJECT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	


end

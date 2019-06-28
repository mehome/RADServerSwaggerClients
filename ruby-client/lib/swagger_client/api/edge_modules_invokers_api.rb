=begin
#EMS API Documentation

#Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

OpenAPI spec version: 0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.5

=end

require 'uri'

module SwaggerClient
  class EdgeModulesInvokersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Invoke Resource Delete Method
    # Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [nil]
    def delete_resource_endpoint(mname, rname, opts = {})
      delete_resource_endpoint_with_http_info(mname, rname, opts)
      nil
    end

    # Invoke Resource Delete Method
    # Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_resource_endpoint_with_http_info(mname, rname, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EdgeModulesInvokersApi.delete_resource_endpoint ...'
      end
      # verify the required parameter 'mname' is set
      if @api_client.config.client_side_validation && mname.nil?
        fail ArgumentError, "Missing the required parameter 'mname' when calling EdgeModulesInvokersApi.delete_resource_endpoint"
      end
      # verify the required parameter 'rname' is set
      if @api_client.config.client_side_validation && rname.nil?
        fail ArgumentError, "Missing the required parameter 'rname' when calling EdgeModulesInvokersApi.delete_resource_endpoint"
      end
      # resource path
      local_var_path = '/edgemodules/{mname}/{rname}'.sub('{' + 'mname' + '}', mname.to_s).sub('{' + 'rname' + '}', rname.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      header_params[:'X-Embarcadero-Application-Id'] = opts[:'x_embarcadero_application_id'] if !opts[:'x_embarcadero_application_id'].nil?
      header_params[:'X-Embarcadero-App-Secret'] = opts[:'x_embarcadero_app_secret'] if !opts[:'x_embarcadero_app_secret'].nil?
      header_params[:'X-Embarcadero-Master-Secret'] = opts[:'x_embarcadero_master_secret'] if !opts[:'x_embarcadero_master_secret'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EdgeModulesInvokersApi#delete_resource_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoke Resource/* Delete Method
    # Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param wildcard Is the Wild card part of the URL
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [nil]
    def delete_resource_endpoint_item(mname, rname, wildcard, opts = {})
      delete_resource_endpoint_item_with_http_info(mname, rname, wildcard, opts)
      nil
    end

    # Invoke Resource/* Delete Method
    # Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param wildcard Is the Wild card part of the URL
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_resource_endpoint_item_with_http_info(mname, rname, wildcard, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EdgeModulesInvokersApi.delete_resource_endpoint_item ...'
      end
      # verify the required parameter 'mname' is set
      if @api_client.config.client_side_validation && mname.nil?
        fail ArgumentError, "Missing the required parameter 'mname' when calling EdgeModulesInvokersApi.delete_resource_endpoint_item"
      end
      # verify the required parameter 'rname' is set
      if @api_client.config.client_side_validation && rname.nil?
        fail ArgumentError, "Missing the required parameter 'rname' when calling EdgeModulesInvokersApi.delete_resource_endpoint_item"
      end
      # verify the required parameter 'wildcard' is set
      if @api_client.config.client_side_validation && wildcard.nil?
        fail ArgumentError, "Missing the required parameter 'wildcard' when calling EdgeModulesInvokersApi.delete_resource_endpoint_item"
      end
      # resource path
      local_var_path = '/edgemodules/{mname}/{rname}/{wildcard}'.sub('{' + 'mname' + '}', mname.to_s).sub('{' + 'rname' + '}', rname.to_s).sub('{' + 'wildcard' + '}', wildcard.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      header_params[:'X-Embarcadero-Application-Id'] = opts[:'x_embarcadero_application_id'] if !opts[:'x_embarcadero_application_id'].nil?
      header_params[:'X-Embarcadero-App-Secret'] = opts[:'x_embarcadero_app_secret'] if !opts[:'x_embarcadero_app_secret'].nil?
      header_params[:'X-Embarcadero-Master-Secret'] = opts[:'x_embarcadero_master_secret'] if !opts[:'x_embarcadero_master_secret'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EdgeModulesInvokersApi#delete_resource_endpoint_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoke Resource Get Method
    # Used to invoke the GET method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [nil]
    def get_resource_endpoint(mname, rname, opts = {})
      get_resource_endpoint_with_http_info(mname, rname, opts)
      nil
    end

    # Invoke Resource Get Method
    # Used to invoke the GET method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_resource_endpoint_with_http_info(mname, rname, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EdgeModulesInvokersApi.get_resource_endpoint ...'
      end
      # verify the required parameter 'mname' is set
      if @api_client.config.client_side_validation && mname.nil?
        fail ArgumentError, "Missing the required parameter 'mname' when calling EdgeModulesInvokersApi.get_resource_endpoint"
      end
      # verify the required parameter 'rname' is set
      if @api_client.config.client_side_validation && rname.nil?
        fail ArgumentError, "Missing the required parameter 'rname' when calling EdgeModulesInvokersApi.get_resource_endpoint"
      end
      # resource path
      local_var_path = '/edgemodules/{mname}/{rname}'.sub('{' + 'mname' + '}', mname.to_s).sub('{' + 'rname' + '}', rname.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Embarcadero-Application-Id'] = opts[:'x_embarcadero_application_id'] if !opts[:'x_embarcadero_application_id'].nil?
      header_params[:'X-Embarcadero-App-Secret'] = opts[:'x_embarcadero_app_secret'] if !opts[:'x_embarcadero_app_secret'].nil?
      header_params[:'X-Embarcadero-Master-Secret'] = opts[:'x_embarcadero_master_secret'] if !opts[:'x_embarcadero_master_secret'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EdgeModulesInvokersApi#get_resource_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoke Resource/* Get Method
    # Used to invoke the GET method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param wildcard Is the Wild card part of the URL
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [nil]
    def get_resource_endpoint_item(mname, rname, wildcard, opts = {})
      get_resource_endpoint_item_with_http_info(mname, rname, wildcard, opts)
      nil
    end

    # Invoke Resource/* Get Method
    # Used to invoke the GET method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param wildcard Is the Wild card part of the URL
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_resource_endpoint_item_with_http_info(mname, rname, wildcard, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EdgeModulesInvokersApi.get_resource_endpoint_item ...'
      end
      # verify the required parameter 'mname' is set
      if @api_client.config.client_side_validation && mname.nil?
        fail ArgumentError, "Missing the required parameter 'mname' when calling EdgeModulesInvokersApi.get_resource_endpoint_item"
      end
      # verify the required parameter 'rname' is set
      if @api_client.config.client_side_validation && rname.nil?
        fail ArgumentError, "Missing the required parameter 'rname' when calling EdgeModulesInvokersApi.get_resource_endpoint_item"
      end
      # verify the required parameter 'wildcard' is set
      if @api_client.config.client_side_validation && wildcard.nil?
        fail ArgumentError, "Missing the required parameter 'wildcard' when calling EdgeModulesInvokersApi.get_resource_endpoint_item"
      end
      # resource path
      local_var_path = '/edgemodules/{mname}/{rname}/{wildcard}'.sub('{' + 'mname' + '}', mname.to_s).sub('{' + 'rname' + '}', rname.to_s).sub('{' + 'wildcard' + '}', wildcard.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      header_params[:'X-Embarcadero-Application-Id'] = opts[:'x_embarcadero_application_id'] if !opts[:'x_embarcadero_application_id'].nil?
      header_params[:'X-Embarcadero-App-Secret'] = opts[:'x_embarcadero_app_secret'] if !opts[:'x_embarcadero_app_secret'].nil?
      header_params[:'X-Embarcadero-Master-Secret'] = opts[:'x_embarcadero_master_secret'] if !opts[:'x_embarcadero_master_secret'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EdgeModulesInvokersApi#get_resource_endpoint_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoke Resource Patch Method
    # Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param body Body Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [nil]
    def patch_resource_endpoint(mname, rname, body, opts = {})
      patch_resource_endpoint_with_http_info(mname, rname, body, opts)
      nil
    end

    # Invoke Resource Patch Method
    # Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param body Body Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_resource_endpoint_with_http_info(mname, rname, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EdgeModulesInvokersApi.patch_resource_endpoint ...'
      end
      # verify the required parameter 'mname' is set
      if @api_client.config.client_side_validation && mname.nil?
        fail ArgumentError, "Missing the required parameter 'mname' when calling EdgeModulesInvokersApi.patch_resource_endpoint"
      end
      # verify the required parameter 'rname' is set
      if @api_client.config.client_side_validation && rname.nil?
        fail ArgumentError, "Missing the required parameter 'rname' when calling EdgeModulesInvokersApi.patch_resource_endpoint"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EdgeModulesInvokersApi.patch_resource_endpoint"
      end
      # resource path
      local_var_path = '/edgemodules/{mname}/{rname}'.sub('{' + 'mname' + '}', mname.to_s).sub('{' + 'rname' + '}', rname.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Embarcadero-Application-Id'] = opts[:'x_embarcadero_application_id'] if !opts[:'x_embarcadero_application_id'].nil?
      header_params[:'X-Embarcadero-App-Secret'] = opts[:'x_embarcadero_app_secret'] if !opts[:'x_embarcadero_app_secret'].nil?
      header_params[:'X-Embarcadero-Master-Secret'] = opts[:'x_embarcadero_master_secret'] if !opts[:'x_embarcadero_master_secret'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EdgeModulesInvokersApi#patch_resource_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoke Resource/* Patch Method
    # Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param wildcard Is the Wild card part of the URL
    # @param body Body Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [nil]
    def patch_resource_endpoint_item(mname, rname, wildcard, body, opts = {})
      patch_resource_endpoint_item_with_http_info(mname, rname, wildcard, body, opts)
      nil
    end

    # Invoke Resource/* Patch Method
    # Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param wildcard Is the Wild card part of the URL
    # @param body Body Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_resource_endpoint_item_with_http_info(mname, rname, wildcard, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EdgeModulesInvokersApi.patch_resource_endpoint_item ...'
      end
      # verify the required parameter 'mname' is set
      if @api_client.config.client_side_validation && mname.nil?
        fail ArgumentError, "Missing the required parameter 'mname' when calling EdgeModulesInvokersApi.patch_resource_endpoint_item"
      end
      # verify the required parameter 'rname' is set
      if @api_client.config.client_side_validation && rname.nil?
        fail ArgumentError, "Missing the required parameter 'rname' when calling EdgeModulesInvokersApi.patch_resource_endpoint_item"
      end
      # verify the required parameter 'wildcard' is set
      if @api_client.config.client_side_validation && wildcard.nil?
        fail ArgumentError, "Missing the required parameter 'wildcard' when calling EdgeModulesInvokersApi.patch_resource_endpoint_item"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EdgeModulesInvokersApi.patch_resource_endpoint_item"
      end
      # resource path
      local_var_path = '/edgemodules/{mname}/{rname}/{wildcard}'.sub('{' + 'mname' + '}', mname.to_s).sub('{' + 'rname' + '}', rname.to_s).sub('{' + 'wildcard' + '}', wildcard.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Embarcadero-Application-Id'] = opts[:'x_embarcadero_application_id'] if !opts[:'x_embarcadero_application_id'].nil?
      header_params[:'X-Embarcadero-App-Secret'] = opts[:'x_embarcadero_app_secret'] if !opts[:'x_embarcadero_app_secret'].nil?
      header_params[:'X-Embarcadero-Master-Secret'] = opts[:'x_embarcadero_master_secret'] if !opts[:'x_embarcadero_master_secret'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EdgeModulesInvokersApi#patch_resource_endpoint_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoke Resource Post Method
    # Used to invoke the POST method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param body Body Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [nil]
    def post_resource_endpoint(mname, rname, body, opts = {})
      post_resource_endpoint_with_http_info(mname, rname, body, opts)
      nil
    end

    # Invoke Resource Post Method
    # Used to invoke the POST method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param body Body Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_resource_endpoint_with_http_info(mname, rname, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EdgeModulesInvokersApi.post_resource_endpoint ...'
      end
      # verify the required parameter 'mname' is set
      if @api_client.config.client_side_validation && mname.nil?
        fail ArgumentError, "Missing the required parameter 'mname' when calling EdgeModulesInvokersApi.post_resource_endpoint"
      end
      # verify the required parameter 'rname' is set
      if @api_client.config.client_side_validation && rname.nil?
        fail ArgumentError, "Missing the required parameter 'rname' when calling EdgeModulesInvokersApi.post_resource_endpoint"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EdgeModulesInvokersApi.post_resource_endpoint"
      end
      # resource path
      local_var_path = '/edgemodules/{mname}/{rname}'.sub('{' + 'mname' + '}', mname.to_s).sub('{' + 'rname' + '}', rname.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Embarcadero-Application-Id'] = opts[:'x_embarcadero_application_id'] if !opts[:'x_embarcadero_application_id'].nil?
      header_params[:'X-Embarcadero-App-Secret'] = opts[:'x_embarcadero_app_secret'] if !opts[:'x_embarcadero_app_secret'].nil?
      header_params[:'X-Embarcadero-Master-Secret'] = opts[:'x_embarcadero_master_secret'] if !opts[:'x_embarcadero_master_secret'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EdgeModulesInvokersApi#post_resource_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoke Resource/* Post Method
    # Used to invoke the POST method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param wildcard Is the Wild card part of the URL
    # @param body Body Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [nil]
    def post_resource_endpoint_item(mname, rname, wildcard, body, opts = {})
      post_resource_endpoint_item_with_http_info(mname, rname, wildcard, body, opts)
      nil
    end

    # Invoke Resource/* Post Method
    # Used to invoke the POST method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param wildcard Is the Wild card part of the URL
    # @param body Body Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_resource_endpoint_item_with_http_info(mname, rname, wildcard, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EdgeModulesInvokersApi.post_resource_endpoint_item ...'
      end
      # verify the required parameter 'mname' is set
      if @api_client.config.client_side_validation && mname.nil?
        fail ArgumentError, "Missing the required parameter 'mname' when calling EdgeModulesInvokersApi.post_resource_endpoint_item"
      end
      # verify the required parameter 'rname' is set
      if @api_client.config.client_side_validation && rname.nil?
        fail ArgumentError, "Missing the required parameter 'rname' when calling EdgeModulesInvokersApi.post_resource_endpoint_item"
      end
      # verify the required parameter 'wildcard' is set
      if @api_client.config.client_side_validation && wildcard.nil?
        fail ArgumentError, "Missing the required parameter 'wildcard' when calling EdgeModulesInvokersApi.post_resource_endpoint_item"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EdgeModulesInvokersApi.post_resource_endpoint_item"
      end
      # resource path
      local_var_path = '/edgemodules/{mname}/{rname}/{wildcard}'.sub('{' + 'mname' + '}', mname.to_s).sub('{' + 'rname' + '}', rname.to_s).sub('{' + 'wildcard' + '}', wildcard.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Embarcadero-Application-Id'] = opts[:'x_embarcadero_application_id'] if !opts[:'x_embarcadero_application_id'].nil?
      header_params[:'X-Embarcadero-App-Secret'] = opts[:'x_embarcadero_app_secret'] if !opts[:'x_embarcadero_app_secret'].nil?
      header_params[:'X-Embarcadero-Master-Secret'] = opts[:'x_embarcadero_master_secret'] if !opts[:'x_embarcadero_master_secret'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EdgeModulesInvokersApi#post_resource_endpoint_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoke Resource Put Method
    # Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param body Body Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [nil]
    def put_resource_endpoint(mname, rname, body, opts = {})
      put_resource_endpoint_with_http_info(mname, rname, body, opts)
      nil
    end

    # Invoke Resource Put Method
    # Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param body Body Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def put_resource_endpoint_with_http_info(mname, rname, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EdgeModulesInvokersApi.put_resource_endpoint ...'
      end
      # verify the required parameter 'mname' is set
      if @api_client.config.client_side_validation && mname.nil?
        fail ArgumentError, "Missing the required parameter 'mname' when calling EdgeModulesInvokersApi.put_resource_endpoint"
      end
      # verify the required parameter 'rname' is set
      if @api_client.config.client_side_validation && rname.nil?
        fail ArgumentError, "Missing the required parameter 'rname' when calling EdgeModulesInvokersApi.put_resource_endpoint"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EdgeModulesInvokersApi.put_resource_endpoint"
      end
      # resource path
      local_var_path = '/edgemodules/{mname}/{rname}'.sub('{' + 'mname' + '}', mname.to_s).sub('{' + 'rname' + '}', rname.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Embarcadero-Application-Id'] = opts[:'x_embarcadero_application_id'] if !opts[:'x_embarcadero_application_id'].nil?
      header_params[:'X-Embarcadero-App-Secret'] = opts[:'x_embarcadero_app_secret'] if !opts[:'x_embarcadero_app_secret'].nil?
      header_params[:'X-Embarcadero-Master-Secret'] = opts[:'x_embarcadero_master_secret'] if !opts[:'x_embarcadero_master_secret'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EdgeModulesInvokersApi#put_resource_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoke Resource/* Put Method
    # Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param wildcard Is the Wild card part of the URL
    # @param body Body Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [nil]
    def put_resource_endpoint_item(mname, rname, wildcard, body, opts = {})
      put_resource_endpoint_item_with_http_info(mname, rname, wildcard, body, opts)
      nil
    end

    # Invoke Resource/* Put Method
    # Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
    # @param mname Is the EMS EdgeModule name
    # @param rname Is the unique EMS EdgeModule Resource name
    # @param wildcard Is the Wild card part of the URL
    # @param body Body Object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_embarcadero_application_id 
    # @option opts [String] :x_embarcadero_app_secret 
    # @option opts [String] :x_embarcadero_master_secret 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def put_resource_endpoint_item_with_http_info(mname, rname, wildcard, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EdgeModulesInvokersApi.put_resource_endpoint_item ...'
      end
      # verify the required parameter 'mname' is set
      if @api_client.config.client_side_validation && mname.nil?
        fail ArgumentError, "Missing the required parameter 'mname' when calling EdgeModulesInvokersApi.put_resource_endpoint_item"
      end
      # verify the required parameter 'rname' is set
      if @api_client.config.client_side_validation && rname.nil?
        fail ArgumentError, "Missing the required parameter 'rname' when calling EdgeModulesInvokersApi.put_resource_endpoint_item"
      end
      # verify the required parameter 'wildcard' is set
      if @api_client.config.client_side_validation && wildcard.nil?
        fail ArgumentError, "Missing the required parameter 'wildcard' when calling EdgeModulesInvokersApi.put_resource_endpoint_item"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EdgeModulesInvokersApi.put_resource_endpoint_item"
      end
      # resource path
      local_var_path = '/edgemodules/{mname}/{rname}/{wildcard}'.sub('{' + 'mname' + '}', mname.to_s).sub('{' + 'rname' + '}', rname.to_s).sub('{' + 'wildcard' + '}', wildcard.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Embarcadero-Application-Id'] = opts[:'x_embarcadero_application_id'] if !opts[:'x_embarcadero_application_id'].nil?
      header_params[:'X-Embarcadero-App-Secret'] = opts[:'x_embarcadero_app_secret'] if !opts[:'x_embarcadero_app_secret'].nil?
      header_params[:'X-Embarcadero-Master-Secret'] = opts[:'x_embarcadero_master_secret'] if !opts[:'x_embarcadero_master_secret'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EdgeModulesInvokersApi#put_resource_endpoint_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

=begin
#EMS API Documentation

#Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

OpenAPI spec version: 0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.5

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::EdgeModulesInvokersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EdgeModulesInvokersApi' do
  before do
    # run before each test
    @instance = SwaggerClient::EdgeModulesInvokersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EdgeModulesInvokersApi' do
    it 'should create an instance of EdgeModulesInvokersApi' do
      expect(@instance).to be_instance_of(SwaggerClient::EdgeModulesInvokersApi)
    end
  end

  # unit tests for delete_resource_endpoint
  # Invoke Resource Delete Method
  # Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
  # @param mname Is the EMS EdgeModule name
  # @param rname Is the unique EMS EdgeModule Resource name
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_embarcadero_application_id 
  # @option opts [String] :x_embarcadero_app_secret 
  # @option opts [String] :x_embarcadero_master_secret 
  # @return [nil]
  describe 'delete_resource_endpoint test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_resource_endpoint_item
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
  describe 'delete_resource_endpoint_item test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_resource_endpoint
  # Invoke Resource Get Method
  # Used to invoke the GET method of the resource from an existing EMS EdgeModule.
  # @param mname Is the EMS EdgeModule name
  # @param rname Is the unique EMS EdgeModule Resource name
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_embarcadero_application_id 
  # @option opts [String] :x_embarcadero_app_secret 
  # @option opts [String] :x_embarcadero_master_secret 
  # @return [nil]
  describe 'get_resource_endpoint test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_resource_endpoint_item
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
  describe 'get_resource_endpoint_item test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_resource_endpoint
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
  describe 'patch_resource_endpoint test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_resource_endpoint_item
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
  describe 'patch_resource_endpoint_item test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_resource_endpoint
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
  describe 'post_resource_endpoint test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_resource_endpoint_item
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
  describe 'post_resource_endpoint_item test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_resource_endpoint
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
  describe 'put_resource_endpoint test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_resource_endpoint_item
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
  describe 'put_resource_endpoint_item test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

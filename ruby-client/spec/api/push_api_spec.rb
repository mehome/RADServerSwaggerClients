=begin
#EMS API Documentation

#Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

OpenAPI spec version: 0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.5

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::PushApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PushApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PushApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PushApi' do
    it 'should create an instance of PushApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PushApi)
    end
  end

  # unit tests for send
  # Send Push
  # Used to send a push notification message to a registered device
  # @param body Object containing the Push Message data structure
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_embarcadero_application_id 
  # @option opts [String] :x_embarcadero_app_secret 
  # @option opts [String] :x_embarcadero_master_secret 
  # @return [nil]
  describe 'send test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
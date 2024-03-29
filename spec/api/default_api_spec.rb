=begin
#Platform API

#An API for the common components of all of Codat's products.  These end points cover creating and managing your companies, data connections, and integrations.  [Read about the building blocks of Codat...](https://docs.codat.io/core-concepts/companies)  [See our OpenAPI spec](https://github.com/codatio/oas) 

The version of the OpenAPI document: 3.0.0
Contact: support@codat.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::DefaultApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DefaultApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::DefaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefaultApi' do
    it 'should create an instance of DefaultApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::DefaultApi)
    end
  end

  # unit tests for client_rate_limit_reached_post
  # @param [Hash] opts the optional parameters
  # @option opts [ClientRateLimitReachedWebhook] :client_rate_limit_reached_webhook Triggered when your Codat client&#39;s rate limit is reached.
  # @return [nil]
  describe 'client_rate_limit_reached_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for client_rate_limit_reset_post
  # @param [Hash] opts the optional parameters
  # @option opts [ClientRateLimitResetWebhook] :client_rate_limit_reset_webhook Triggered when your Codat client&#39;s rate limit is reset.
  # @return [nil]
  describe 'client_rate_limit_reset_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for company_data_connection_status_changed_post
  # @param [Hash] opts the optional parameters
  # @option opts [ConnectionStatusChangedWebhook] :connection_status_changed_webhook Triggered anytime a data connection&#39;s status changes.
  # @return [nil]
  describe 'company_data_connection_status_changed_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for data_sync_completed_post
  # @param [Hash] opts the optional parameters
  # @option opts [DataSyncCompletedWebhook] :data_sync_completed_webhook Triggered when a data synchronization is completed; a notification will be generated for each &#x60;dataType&#x60; as the sync completes.
  # @return [nil]
  describe 'data_sync_completed_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for dataset_data_changed_post
  # @param [Hash] opts the optional parameters
  # @option opts [DatasetDataChangedWebhook] :dataset_data_changed_webhook Triggered when a dataset synchronization has completed and this has resulted in updates within Codat&#39;s data cache - this could be through the creation of new records or a change to existing records.
  # @return [nil]
  describe 'dataset_data_changed_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for dataset_status_has_changed_to_an_error_state_post
  # @param [Hash] opts the optional parameters
  # @option opts [DatasetStatusChangedErrorWebhook] :dataset_status_changed_error_webhook Triggered when the synchronization of a dataset fails.
  # @return [nil]
  describe 'dataset_status_has_changed_to_an_error_state_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for new_company_synchronized_post
  # @param [Hash] opts the optional parameters
  # @option opts [NewCompanySynchronizedWebhook] :new_company_synchronized_webhook Triggered after a new company has successfully synchronized at least one dataType for the first time.
  # @return [nil]
  describe 'new_company_synchronized_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for push_operation_has_timed_out_post
  # @param [Hash] opts the optional parameters
  # @option opts [PushOperationTimedOutWebhook] :push_operation_timed_out_webhook Triggered when a push operation times out.
  # @return [nil]
  describe 'push_operation_has_timed_out_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for push_operation_status_has_changed_post
  # @param [Hash] opts the optional parameters
  # @option opts [PushOperationStatusChangedWebhook] :push_operation_status_changed_webhook Triggered when a push operation&#39;s status changes.
  # @return [nil]
  describe 'push_operation_status_has_changed_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end

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
require 'date'

# Unit tests for OpenapiClient::DataStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenapiClient::DataStatus do
  let(:instance) { OpenapiClient::DataStatus.new }

  describe 'test an instance of DataStatus' do
    it 'should create an instance of DataStatus' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenapiClient::DataStatus)
    end
  end

  describe 'test attribute "data_type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["accountTransactions", "balanceSheet", "bankAccounts", "bankTransactions", "billCreditNotes", "billPayments", "bills", "cashFlowStatement", "chartOfAccounts", "company", "creditNotes", "customers", "directCosts", "directIncomes", "invoices", "itemReceipts", "items", "journalEntries", "journals", "paymentMethods", "payments", "profitAndLoss", "purchaseOrders", "salesOrders", "suppliers", "taxRates", "trackingCategories", "transfers", "banking-accountBalances", "banking-accounts", "banking-transactionCategories", "banking-transactions", "commerce-companyInfo", "commerce-customers", "commerce-disputes", "commerce-locations", "commerce-orders", "commerce-paymentMethods", "commerce-payments", "commerce-productCategories", "commerce-products", "commerce-taxComponents", "commerce-transactions"])
      # validator.allowable_values.each do |value|
      #   expect { instance.data_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "last_successful_sync"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "current_status"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "latest_sync_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "latest_successful_sync_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end

# openapi_client

OpenapiClient - the Ruby gem for the Sync for Commerce

The API for Sync for Commerce. 

Sync for Commerce automatically replicates and reconciles sales data from a merchant’s source PoS, Payments, and eCommerce systems into their accounting software. This eliminates manual processing by merchants and transforms their ability to run and grow their business.
  
[Read More...](https://docs.codat.io/commerce/overview)

Not seeing the endpoints you're expecting? We've [reorganized our products](https://docs.codat.io/updates/230901-new-products), and you may be using a [different version of Sync for Commerce](https://docs.codat.io/sync-for-commerce-v1-api#/).

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://www.codat.io/](https://www.codat.io/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

# Setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: auth_header
  config.api_key['auth_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['auth_header'] = 'Bearer'
  # Configure faraday connection
  config.configure_faraday_connection { |connection| 'YOUR CONNECTION CONFIG PROC' }
end

api_instance = OpenapiClient::AdvancedControlsApi.new
opts = {
  create_company: TODO # CreateCompany | 
}

begin
  #Create company
  result = api_instance.create_company(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AdvancedControlsApi->create_company: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.codat.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::AdvancedControlsApi* | [**create_company**](docs/AdvancedControlsApi.md#create_company) | **POST** /companies | Create company
*OpenapiClient::AdvancedControlsApi* | [**get_configuration**](docs/AdvancedControlsApi.md#get_configuration) | **GET** /config/companies/{companyId}/sync/commerce | Get company configuration
*OpenapiClient::AdvancedControlsApi* | [**list_companies**](docs/AdvancedControlsApi.md#list_companies) | **GET** /companies | List companies
*OpenapiClient::AdvancedControlsApi* | [**set_configuration**](docs/AdvancedControlsApi.md#set_configuration) | **POST** /config/companies/{companyId}/sync/commerce | Set configuration
*OpenapiClient::ConnectionsApi* | [**create_connection**](docs/ConnectionsApi.md#create_connection) | **POST** /companies/{companyId}/connections | Create connection
*OpenapiClient::ConnectionsApi* | [**get_sync_flow_url**](docs/ConnectionsApi.md#get_sync_flow_url) | **GET** /config/sync/commerce/{commerceKey}/{accountingKey}/start | Start new sync flow
*OpenapiClient::ConnectionsApi* | [**list_connections**](docs/ConnectionsApi.md#list_connections) | **GET** /companies/{companyId}/connections | List connections
*OpenapiClient::ConnectionsApi* | [**update_connection**](docs/ConnectionsApi.md#update_connection) | **PATCH** /companies/{companyId}/connections/{connectionId} | Update connection
*OpenapiClient::ConnectionsApi* | [**update_connection_authorization**](docs/ConnectionsApi.md#update_connection_authorization) | **PUT** /companies/{companyId}/connections/{connectionId}/authorization | Update authorization
*OpenapiClient::IntegrationsApi* | [**get_integration_branding**](docs/IntegrationsApi.md#get_integration_branding) | **GET** /config/integrations/{platformKey}/branding | Get branding for an integration
*OpenapiClient::IntegrationsApi* | [**list_integrations**](docs/IntegrationsApi.md#list_integrations) | **GET** /config/integrations | List integrations
*OpenapiClient::SyncApi* | [**get_last_successful_sync**](docs/SyncApi.md#get_last_successful_sync) | **GET** /companies/{companyId}/sync/commerce/syncs/lastSuccessful/status | Last successful sync
*OpenapiClient::SyncApi* | [**get_latest_sync**](docs/SyncApi.md#get_latest_sync) | **GET** /companies/{companyId}/sync/commerce/syncs/latest/status | Latest sync status
*OpenapiClient::SyncApi* | [**get_sync_by_id**](docs/SyncApi.md#get_sync_by_id) | **GET** /companies/{companyId}/sync/commerce/syncs/{syncId}/status | Get sync status
*OpenapiClient::SyncApi* | [**get_sync_status**](docs/SyncApi.md#get_sync_status) | **GET** /meta/companies/{companyId}/sync/commerce/status | Get sync status
*OpenapiClient::SyncApi* | [**list_syncs**](docs/SyncApi.md#list_syncs) | **GET** /companies/{companyId}/sync/commerce/syncs/list/status | List sync statuses
*OpenapiClient::SyncApi* | [**request_sync**](docs/SyncApi.md#request_sync) | **POST** /companies/{companyId}/sync/commerce/latest | Initiate new sync
*OpenapiClient::SyncApi* | [**request_sync_for_date_range**](docs/SyncApi.md#request_sync_for_date_range) | **POST** /meta/companies/{companyId}/sync/commerce/historic | Initiate sync for specific range
*OpenapiClient::SyncFlowSettingsApi* | [**get_config_text_sync_flow**](docs/SyncFlowSettingsApi.md#get_config_text_sync_flow) | **GET** /sync/commerce/config/ui/text | Get preferences for text fields
*OpenapiClient::SyncFlowSettingsApi* | [**get_visible_accounts**](docs/SyncFlowSettingsApi.md#get_visible_accounts) | **GET** /clients/{clientId}/config/ui/accounts/platform/{platformKey} | List visible accounts
*OpenapiClient::SyncFlowSettingsApi* | [**update_config_text_sync_flow**](docs/SyncFlowSettingsApi.md#update_config_text_sync_flow) | **PATCH** /sync/commerce/config/ui/text | Update preferences for text fields
*OpenapiClient::SyncFlowSettingsApi* | [**update_visible_accounts_sync_flow**](docs/SyncFlowSettingsApi.md#update_visible_accounts_sync_flow) | **POST** /sync/commerce/config/ui/accounts/platform/{platformKey} | Update visible accounts


## Documentation for Models

 - [OpenapiClient::Branding](docs/Branding.md)
 - [OpenapiClient::BrandingButton](docs/BrandingButton.md)
 - [OpenapiClient::BrandingImage](docs/BrandingImage.md)
 - [OpenapiClient::BrandingLogo](docs/BrandingLogo.md)
 - [OpenapiClient::Company](docs/Company.md)
 - [OpenapiClient::CompanySyncStatus](docs/CompanySyncStatus.md)
 - [OpenapiClient::Configuration](docs/Configuration.md)
 - [OpenapiClient::Connection](docs/Connection.md)
 - [OpenapiClient::CreateConnectionRequest](docs/CreateConnectionRequest.md)
 - [OpenapiClient::DataConnectionError](docs/DataConnectionError.md)
 - [OpenapiClient::DataConnectionStatus](docs/DataConnectionStatus.md)
 - [OpenapiClient::DataTypeFeature](docs/DataTypeFeature.md)
 - [OpenapiClient::ErrorValidation](docs/ErrorValidation.md)
 - [OpenapiClient::ErrorValidationItem](docs/ErrorValidationItem.md)
 - [OpenapiClient::FeatureState](docs/FeatureState.md)
 - [OpenapiClient::GroupReference](docs/GroupReference.md)
 - [OpenapiClient::HalRef](docs/HalRef.md)
 - [OpenapiClient::ImageReference](docs/ImageReference.md)
 - [OpenapiClient::Integration](docs/Integration.md)
 - [OpenapiClient::Items](docs/Items.md)
 - [OpenapiClient::Links](docs/Links.md)
 - [OpenapiClient::SourceType](docs/SourceType.md)
 - [OpenapiClient::SyncFlowUrl](docs/SyncFlowUrl.md)
 - [OpenapiClient::SyncRangeDateRange](docs/SyncRangeDateRange.md)
 - [OpenapiClient::SyncStatus](docs/SyncStatus.md)
 - [OpenapiClient::SyncSummary](docs/SyncSummary.md)
 - [OpenapiClient::SyncSummarySyncDateRangeUtc](docs/SyncSummarySyncDateRangeUtc.md)
 - [OpenapiClient::VisibleAccounts](docs/VisibleAccounts.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### auth_header


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


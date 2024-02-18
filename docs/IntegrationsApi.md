# OpenapiClient::IntegrationsApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_integration_branding**](IntegrationsApi.md#get_integration_branding) | **GET** /config/integrations/{platformKey}/branding | Get branding for an integration |
| [**list_integrations**](IntegrationsApi.md#list_integrations) | **GET** /config/integrations | List integrations |


## get_integration_branding

> <Branding> get_integration_branding(platform_key, platform_key2)

Get branding for an integration

Retrieve Integration branding assets.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: auth_header
  config.api_key['auth_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['auth_header'] = 'Bearer'
end

api_instance = OpenapiClient::IntegrationsApi.new
platform_key = 'gbol' # String | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys.
platform_key2 = 'platform_key_example' # String | Unique four letter identifier for the platform

begin
  # Get branding for an integration
  result = api_instance.get_integration_branding(platform_key, platform_key2)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IntegrationsApi->get_integration_branding: #{e}"
end
```

#### Using the get_integration_branding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Branding>, Integer, Hash)> get_integration_branding_with_http_info(platform_key, platform_key2)

```ruby
begin
  # Get branding for an integration
  data, status_code, headers = api_instance.get_integration_branding_with_http_info(platform_key, platform_key2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Branding>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IntegrationsApi->get_integration_branding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_key** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. |  |
| **platform_key2** | **String** | Unique four letter identifier for the platform |  |

### Return type

[**Branding**](Branding.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_integrations

> <Integrations> list_integrations(opts)

List integrations

Retrieve a list of available integrations support by data type and state of release.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: auth_header
  config.api_key['auth_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['auth_header'] = 'Bearer'
end

api_instance = OpenapiClient::IntegrationsApi.new
opts = {
  page: 1, # Integer | Page number. [Read more](https://docs.codat.io/using-the-api/paging).
  page_size: 100, # Integer | Number of records to return in a page. [Read more](https://docs.codat.io/using-the-api/paging).
  query: '-modifiedDate', # String | Codat query string. [Read more](https://docs.codat.io/using-the-api/querying).
  order_by: '-modifiedDate' # String | Field to order results by. [Read more](https://docs.codat.io/using-the-api/ordering-results).
}

begin
  # List integrations
  result = api_instance.list_integrations(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IntegrationsApi->list_integrations: #{e}"
end
```

#### Using the list_integrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Integrations>, Integer, Hash)> list_integrations_with_http_info(opts)

```ruby
begin
  # List integrations
  data, status_code, headers = api_instance.list_integrations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Integrations>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IntegrationsApi->list_integrations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. [Read more](https://docs.codat.io/using-the-api/paging). | [optional][default to 1] |
| **page_size** | **Integer** | Number of records to return in a page. [Read more](https://docs.codat.io/using-the-api/paging). | [optional][default to 100] |
| **query** | **String** | Codat query string. [Read more](https://docs.codat.io/using-the-api/querying). | [optional] |
| **order_by** | **String** | Field to order results by. [Read more](https://docs.codat.io/using-the-api/ordering-results). | [optional] |

### Return type

[**Integrations**](Integrations.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


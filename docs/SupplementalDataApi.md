# OpenapiClient::SupplementalDataApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**configure_supplemental_data**](SupplementalDataApi.md#configure_supplemental_data) | **PUT** /integrations/{platformKey}/dataTypes/{dataType}/supplementalDataConfig | Configure |
| [**get_supplemental_data_configuration**](SupplementalDataApi.md#get_supplemental_data_configuration) | **GET** /integrations/{platformKey}/dataTypes/{dataType}/supplementalDataConfig | Get configuration |


## configure_supplemental_data

> configure_supplemental_data(platform_key, data_type, opts)

Configure

The *Configure* endpoint allows you to maintain or change configuration required to return supplemental data for each integration and data type combination.  [Supplemental data](https://docs.codat.io/using-the-api/additional-data) is additional data you can include in Codat's standard data types.  **Integration-specific behaviour** See the *examples* for integration-specific frequently requested properties.

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

api_instance = OpenapiClient::SupplementalDataApi.new
platform_key = 'gbol' # String | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys.
data_type = 'chartOfAccounts' # String | Supported supplemental data data type.
opts = {
  supplemental_data_configuration: OpenapiClient::SupplementalDataConfiguration.new # SupplementalDataConfiguration | The configuration for the specified platform and data type.
}

begin
  # Configure
  api_instance.configure_supplemental_data(platform_key, data_type, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SupplementalDataApi->configure_supplemental_data: #{e}"
end
```

#### Using the configure_supplemental_data_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> configure_supplemental_data_with_http_info(platform_key, data_type, opts)

```ruby
begin
  # Configure
  data, status_code, headers = api_instance.configure_supplemental_data_with_http_info(platform_key, data_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SupplementalDataApi->configure_supplemental_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_key** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. |  |
| **data_type** | **String** | Supported supplemental data data type. |  |
| **supplemental_data_configuration** | [**SupplementalDataConfiguration**](SupplementalDataConfiguration.md) | The configuration for the specified platform and data type. | [optional] |

### Return type

nil (empty response body)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_supplemental_data_configuration

> <SupplementalDataConfiguration> get_supplemental_data_configuration(platform_key, data_type)

Get configuration

The *Get configuration* endpoint returns supplemental data configuration previously created for each integration and data type combination.  [Supplemental data](https://docs.codat.io/using-the-api/additional-data) is additional data you can include in Codat's standard data types.

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

api_instance = OpenapiClient::SupplementalDataApi.new
platform_key = 'gbol' # String | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys.
data_type = 'chartOfAccounts' # String | Supported supplemental data data type.

begin
  # Get configuration
  result = api_instance.get_supplemental_data_configuration(platform_key, data_type)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SupplementalDataApi->get_supplemental_data_configuration: #{e}"
end
```

#### Using the get_supplemental_data_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SupplementalDataConfiguration>, Integer, Hash)> get_supplemental_data_configuration_with_http_info(platform_key, data_type)

```ruby
begin
  # Get configuration
  data, status_code, headers = api_instance.get_supplemental_data_configuration_with_http_info(platform_key, data_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SupplementalDataConfiguration>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SupplementalDataApi->get_supplemental_data_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_key** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. |  |
| **data_type** | **String** | Supported supplemental data data type. |  |

### Return type

[**SupplementalDataConfiguration**](SupplementalDataConfiguration.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# OpenapiClient::CustomDataTypeApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**configure_custom_data_type**](CustomDataTypeApi.md#configure_custom_data_type) | **PUT** /integrations/{platformKey}/dataTypes/custom/{customDataIdentifier} | Configure custom data type |
| [**get_custom_data_type_configuration**](CustomDataTypeApi.md#get_custom_data_type_configuration) | **GET** /integrations/{platformKey}/dataTypes/custom/{customDataIdentifier} | Get custom data configuration |
| [**list_custom_data_type_records**](CustomDataTypeApi.md#list_custom_data_type_records) | **GET** /companies/{companyId}/connections/{connectionId}/data/custom/{customDataIdentifier} | List custom data type records |
| [**refresh_custom_data_type**](CustomDataTypeApi.md#refresh_custom_data_type) | **POST** /companies/{companyId}/connections/{connectionId}/data/queue/custom/{customDataIdentifier} | Refresh custom data type |


## configure_custom_data_type

> <CustomDataTypeConfiguration> configure_custom_data_type(platform_key, custom_data_identifier, opts)

Configure custom data type

The *Configure custom data type* endpoint allows you to maintain or change the configuration required to return a custom data type for a specific integration.   A [custom data type](https://docs.codat.io/using-the-api/custom-data) is an additional data type you can create that is not included in Codat's standardized data model.  ### Tips and traps  - You can only configure a single custom data type for a single platform at a time. Use the endpoint multiple times if you need to configure it for multiple platforms.   - You can only indicate a single data source for each customer data type.   - Make your custom configuration as similar as possible to our standard data types so you can interact with them in exactly the same way.

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

api_instance = OpenapiClient::CustomDataTypeApi.new
platform_key = 'gbol' # String | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys.
custom_data_identifier = 'DynamicsPurchaseOrders' # String | Unique identifier for a custom data type.
opts = {
  custom_data_type_configuration: OpenapiClient::CustomDataTypeConfiguration.new # CustomDataTypeConfiguration | Custom data type configuration for the specified platform.
}

begin
  # Configure custom data type
  result = api_instance.configure_custom_data_type(platform_key, custom_data_identifier, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomDataTypeApi->configure_custom_data_type: #{e}"
end
```

#### Using the configure_custom_data_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomDataTypeConfiguration>, Integer, Hash)> configure_custom_data_type_with_http_info(platform_key, custom_data_identifier, opts)

```ruby
begin
  # Configure custom data type
  data, status_code, headers = api_instance.configure_custom_data_type_with_http_info(platform_key, custom_data_identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomDataTypeConfiguration>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomDataTypeApi->configure_custom_data_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_key** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. |  |
| **custom_data_identifier** | **String** | Unique identifier for a custom data type. |  |
| **custom_data_type_configuration** | [**CustomDataTypeConfiguration**](CustomDataTypeConfiguration.md) | Custom data type configuration for the specified platform. | [optional] |

### Return type

[**CustomDataTypeConfiguration**](CustomDataTypeConfiguration.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_custom_data_type_configuration

> <CustomDataTypeRecords> get_custom_data_type_configuration(platform_key, custom_data_identifier)

Get custom data configuration

The *Get custom data configuration* endpoint returns existing configuration details for the specified custom data type and integration pair you previously configured.  A [custom data type](https://docs.codat.io/using-the-api/custom-data) is an additional data type you can create that is not included in Codat's standardized data model.

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

api_instance = OpenapiClient::CustomDataTypeApi.new
platform_key = 'gbol' # String | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys.
custom_data_identifier = 'DynamicsPurchaseOrders' # String | Unique identifier for a custom data type.

begin
  # Get custom data configuration
  result = api_instance.get_custom_data_type_configuration(platform_key, custom_data_identifier)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomDataTypeApi->get_custom_data_type_configuration: #{e}"
end
```

#### Using the get_custom_data_type_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomDataTypeRecords>, Integer, Hash)> get_custom_data_type_configuration_with_http_info(platform_key, custom_data_identifier)

```ruby
begin
  # Get custom data configuration
  data, status_code, headers = api_instance.get_custom_data_type_configuration_with_http_info(platform_key, custom_data_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomDataTypeRecords>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomDataTypeApi->get_custom_data_type_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_key** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. |  |
| **custom_data_identifier** | **String** | Unique identifier for a custom data type. |  |

### Return type

[**CustomDataTypeRecords**](CustomDataTypeRecords.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_custom_data_type_records

> <CustomDataTypeRecords> list_custom_data_type_records(opts)

List custom data type records

The *List custom data type records* endpoint returns a paginated list of records pulled for the specified custom data type you previously configured.  A [custom data type](https://docs.codat.io/using-the-api/custom-data) is an additional data type you can create that is not included in Codat's standardized data model.s endpoint returns a paginated list of records whose schema is defined [Configure custom data type](https://docs.codat.io/platform-api#/operations/configure-custom-data-type)

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

api_instance = OpenapiClient::CustomDataTypeApi.new
opts = {
  page: 1, # Integer | Page number. [Read more](https://docs.codat.io/using-the-api/paging).
  page_size: 100 # Integer | Number of records to return in a page. [Read more](https://docs.codat.io/using-the-api/paging).
}

begin
  # List custom data type records
  result = api_instance.list_custom_data_type_records(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomDataTypeApi->list_custom_data_type_records: #{e}"
end
```

#### Using the list_custom_data_type_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomDataTypeRecords>, Integer, Hash)> list_custom_data_type_records_with_http_info(opts)

```ruby
begin
  # List custom data type records
  data, status_code, headers = api_instance.list_custom_data_type_records_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomDataTypeRecords>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomDataTypeApi->list_custom_data_type_records_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. [Read more](https://docs.codat.io/using-the-api/paging). | [optional][default to 1] |
| **page_size** | **Integer** | Number of records to return in a page. [Read more](https://docs.codat.io/using-the-api/paging). | [optional][default to 100] |

### Return type

[**CustomDataTypeRecords**](CustomDataTypeRecords.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refresh_custom_data_type

> <PullOperation> refresh_custom_data_type(company_id, connection_id, custom_data_identifier)

Refresh custom data type

The *Refresh custom data type* endpoint refreshes the specified custom data type for a given company. This is an asynchronous operation that will sync updated data from the linked integration into Codat for you to view.

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

api_instance = OpenapiClient::CustomDataTypeApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
connection_id = '2e9d2c44-f675-40ba-8049-353bfcb5e171' # String | Unique identifier for a connection.
custom_data_identifier = 'DynamicsPurchaseOrders' # String | Unique identifier for a custom data type.

begin
  # Refresh custom data type
  result = api_instance.refresh_custom_data_type(company_id, connection_id, custom_data_identifier)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomDataTypeApi->refresh_custom_data_type: #{e}"
end
```

#### Using the refresh_custom_data_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PullOperation>, Integer, Hash)> refresh_custom_data_type_with_http_info(company_id, connection_id, custom_data_identifier)

```ruby
begin
  # Refresh custom data type
  data, status_code, headers = api_instance.refresh_custom_data_type_with_http_info(company_id, connection_id, custom_data_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PullOperation>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomDataTypeApi->refresh_custom_data_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **connection_id** | **String** | Unique identifier for a connection. |  |
| **custom_data_identifier** | **String** | Unique identifier for a custom data type. |  |

### Return type

[**PullOperation**](PullOperation.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


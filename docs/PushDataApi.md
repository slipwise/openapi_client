# OpenapiClient::PushDataApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_company_push_history**](PushDataApi.md#get_company_push_history) | **GET** /companies/{companyId}/push | List push operations |
| [**get_create_update_model_options_by_data_type**](PushDataApi.md#get_create_update_model_options_by_data_type) | **GET** /companies/{companyId}/connections/{connectionId}/options/{dataType} | Get push options |
| [**get_push_operation**](PushDataApi.md#get_push_operation) | **GET** /companies/{companyId}/push/{pushOperationKey} | Get push operation |


## get_company_push_history

> <PushOperations> get_company_push_history(opts)

List push operations

List push operation records.

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

api_instance = OpenapiClient::PushDataApi.new
opts = {
  page: 1, # Integer | Page number. [Read more](https://docs.codat.io/using-the-api/paging).
  page_size: 100, # Integer | Number of records to return in a page. [Read more](https://docs.codat.io/using-the-api/paging).
  query: '-modifiedDate', # String | Codat query string. [Read more](https://docs.codat.io/using-the-api/querying).
  order_by: '-modifiedDate' # String | Field to order results by. [Read more](https://docs.codat.io/using-the-api/ordering-results).
}

begin
  # List push operations
  result = api_instance.get_company_push_history(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PushDataApi->get_company_push_history: #{e}"
end
```

#### Using the get_company_push_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PushOperations>, Integer, Hash)> get_company_push_history_with_http_info(opts)

```ruby
begin
  # List push operations
  data, status_code, headers = api_instance.get_company_push_history_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PushOperations>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PushDataApi->get_company_push_history_with_http_info: #{e}"
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

[**PushOperations**](PushOperations.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_create_update_model_options_by_data_type

> <PushOption> get_create_update_model_options_by_data_type(company_id, connection_id, data_type)

Get push options

This is the generic documentation for creation and updating of data. See the equivalent endpoint for a given data type for more specific information.   Before pushing data into accounting software, it is often necessary to collect some details from the user as to how they would like the data to be inserted. This includes names and amounts on transactional entities, but also factors such as categorisation of entities, which is often handled differently between different accounting packages. A good example of this is specifying where on the balance sheet/profit and loss reports the user would like a newly-created nominal account to appear.  Codat tries not to limit users to pushing to a very limited number of standard categories, so we have implemented \"options\" endpoints, which allow us to expose to our clients the fields which are required to be pushed for a specific linked company, and the options which may be selected for each field.   > **Supported Integrations** >  > Check out our [coverage explorer](https://knowledge.codat.io/) for integrations that support push (POST/PUT methods).

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

api_instance = OpenapiClient::PushDataApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
connection_id = '2e9d2c44-f675-40ba-8049-353bfcb5e171' # String | Unique identifier for a connection.
data_type = TODO # DataType | The key of a Codat data type

begin
  # Get push options
  result = api_instance.get_create_update_model_options_by_data_type(company_id, connection_id, data_type)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PushDataApi->get_create_update_model_options_by_data_type: #{e}"
end
```

#### Using the get_create_update_model_options_by_data_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PushOption>, Integer, Hash)> get_create_update_model_options_by_data_type_with_http_info(company_id, connection_id, data_type)

```ruby
begin
  # Get push options
  data, status_code, headers = api_instance.get_create_update_model_options_by_data_type_with_http_info(company_id, connection_id, data_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PushOption>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PushDataApi->get_create_update_model_options_by_data_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **connection_id** | **String** | Unique identifier for a connection. |  |
| **data_type** | [**DataType**](.md) | The key of a Codat data type |  |

### Return type

[**PushOption**](PushOption.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_push_operation

> <PushOperation> get_push_operation(company_id, push_operation_key)

Get push operation

Retrieve push operation.

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

api_instance = OpenapiClient::PushDataApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
push_operation_key = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Push operation key.

begin
  # Get push operation
  result = api_instance.get_push_operation(company_id, push_operation_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PushDataApi->get_push_operation: #{e}"
end
```

#### Using the get_push_operation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PushOperation>, Integer, Hash)> get_push_operation_with_http_info(company_id, push_operation_key)

```ruby
begin
  # Get push operation
  data, status_code, headers = api_instance.get_push_operation_with_http_info(company_id, push_operation_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PushOperation>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PushDataApi->get_push_operation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **push_operation_key** | **String** | Push operation key. |  |

### Return type

[**PushOperation**](PushOperation.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


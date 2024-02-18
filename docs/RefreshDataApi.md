# OpenapiClient::RefreshDataApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_company_data_status**](RefreshDataApi.md#get_company_data_status) | **GET** /companies/{companyId}/dataStatus | Get data status |
| [**get_pull_operation**](RefreshDataApi.md#get_pull_operation) | **GET** /companies/{companyId}/data/history/{datasetId} | Get pull operation |
| [**list_pull_operations**](RefreshDataApi.md#list_pull_operations) | **GET** /companies/{companyId}/data/history | List pull operations |
| [**refresh_company_data**](RefreshDataApi.md#refresh_company_data) | **POST** /companies/{companyId}/data/all | Refresh all data |
| [**refresh_data_type**](RefreshDataApi.md#refresh_data_type) | **POST** /companies/{companyId}/data/queue/{dataType} | Refresh data type |


## get_company_data_status

> <Hash<String, DataStatus>> get_company_data_status(company_id)

Get data status

Get the state of each data type for a company

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

api_instance = OpenapiClient::RefreshDataApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.

begin
  # Get data status
  result = api_instance.get_company_data_status(company_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RefreshDataApi->get_company_data_status: #{e}"
end
```

#### Using the get_company_data_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, DataStatus>>, Integer, Hash)> get_company_data_status_with_http_info(company_id)

```ruby
begin
  # Get data status
  data, status_code, headers = api_instance.get_company_data_status_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, DataStatus>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RefreshDataApi->get_company_data_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |

### Return type

[**Hash&lt;String, DataStatus&gt;**](DataStatus.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pull_operation

> <PullOperation> get_pull_operation(company_id, dataset_id)

Get pull operation

Retrieve information about a single dataset or pull operation.

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

api_instance = OpenapiClient::RefreshDataApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
dataset_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique identifier for the dataset that completed its sync.

begin
  # Get pull operation
  result = api_instance.get_pull_operation(company_id, dataset_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RefreshDataApi->get_pull_operation: #{e}"
end
```

#### Using the get_pull_operation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PullOperation>, Integer, Hash)> get_pull_operation_with_http_info(company_id, dataset_id)

```ruby
begin
  # Get pull operation
  data, status_code, headers = api_instance.get_pull_operation_with_http_info(company_id, dataset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PullOperation>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RefreshDataApi->get_pull_operation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **dataset_id** | **String** | Unique identifier for the dataset that completed its sync. |  |

### Return type

[**PullOperation**](PullOperation.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pull_operations

> <PullOperations> list_pull_operations(opts)

List pull operations

Gets the pull operation history (datasets) for a given company.

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

api_instance = OpenapiClient::RefreshDataApi.new
opts = {
  page: 1, # Integer | Page number. [Read more](https://docs.codat.io/using-the-api/paging).
  page_size: 100, # Integer | Number of records to return in a page. [Read more](https://docs.codat.io/using-the-api/paging).
  query: '-modifiedDate', # String | Codat query string. [Read more](https://docs.codat.io/using-the-api/querying).
  order_by: '-modifiedDate' # String | Field to order results by. [Read more](https://docs.codat.io/using-the-api/ordering-results).
}

begin
  # List pull operations
  result = api_instance.list_pull_operations(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RefreshDataApi->list_pull_operations: #{e}"
end
```

#### Using the list_pull_operations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PullOperations>, Integer, Hash)> list_pull_operations_with_http_info(opts)

```ruby
begin
  # List pull operations
  data, status_code, headers = api_instance.list_pull_operations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PullOperations>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RefreshDataApi->list_pull_operations_with_http_info: #{e}"
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

[**PullOperations**](PullOperations.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refresh_company_data

> refresh_company_data(company_id)

Refresh all data

Refreshes all data types with `fetch on first link` set to `true` for a given company.  This is an asynchronous operation, and will bring updated data into Codat from the linked integration for you to view.  [Read more](https://docs.codat.io/core-concepts/data-type-settings) about data type settings and `fetch on first link`.

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

api_instance = OpenapiClient::RefreshDataApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.

begin
  # Refresh all data
  api_instance.refresh_company_data(company_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling RefreshDataApi->refresh_company_data: #{e}"
end
```

#### Using the refresh_company_data_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> refresh_company_data_with_http_info(company_id)

```ruby
begin
  # Refresh all data
  data, status_code, headers = api_instance.refresh_company_data_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling RefreshDataApi->refresh_company_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |

### Return type

nil (empty response body)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refresh_data_type

> <PullOperation> refresh_data_type(company_id, data_type, opts)

Refresh data type

Refreshes a given data type for a given company.  This is an asynchronous operation, and will bring updated data into Codat from the linked integration for you to view.

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

api_instance = OpenapiClient::RefreshDataApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
data_type = TODO # DataType | The key of a Codat data type
opts = {
  connection_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Optionally, provide a data connection id to only queue pull operations on that connection.
}

begin
  # Refresh data type
  result = api_instance.refresh_data_type(company_id, data_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RefreshDataApi->refresh_data_type: #{e}"
end
```

#### Using the refresh_data_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PullOperation>, Integer, Hash)> refresh_data_type_with_http_info(company_id, data_type, opts)

```ruby
begin
  # Refresh data type
  data, status_code, headers = api_instance.refresh_data_type_with_http_info(company_id, data_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PullOperation>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RefreshDataApi->refresh_data_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **data_type** | [**DataType**](.md) | The key of a Codat data type |  |
| **connection_id** | **String** | Optionally, provide a data connection id to only queue pull operations on that connection. | [optional] |

### Return type

[**PullOperation**](PullOperation.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


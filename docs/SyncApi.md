# OpenapiClient::SyncApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_last_successful_sync**](SyncApi.md#get_last_successful_sync) | **GET** /companies/{companyId}/sync/commerce/syncs/lastSuccessful/status | Last successful sync |
| [**get_latest_sync**](SyncApi.md#get_latest_sync) | **GET** /companies/{companyId}/sync/commerce/syncs/latest/status | Latest sync status |
| [**get_sync_by_id**](SyncApi.md#get_sync_by_id) | **GET** /companies/{companyId}/sync/commerce/syncs/{syncId}/status | Get sync status |
| [**get_sync_status**](SyncApi.md#get_sync_status) | **GET** /meta/companies/{companyId}/sync/commerce/status | Get sync status |
| [**list_syncs**](SyncApi.md#list_syncs) | **GET** /companies/{companyId}/sync/commerce/syncs/list/status | List sync statuses |
| [**request_sync**](SyncApi.md#request_sync) | **POST** /companies/{companyId}/sync/commerce/latest | Initiate new sync |
| [**request_sync_for_date_range**](SyncApi.md#request_sync_for_date_range) | **POST** /meta/companies/{companyId}/sync/commerce/historic | Initiate sync for specific range |


## get_last_successful_sync

> <CompanySyncStatus> get_last_successful_sync(company_id)

Last successful sync

Gets the status of the last successful sync

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

api_instance = OpenapiClient::SyncApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.

begin
  # Last successful sync
  result = api_instance.get_last_successful_sync(company_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->get_last_successful_sync: #{e}"
end
```

#### Using the get_last_successful_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanySyncStatus>, Integer, Hash)> get_last_successful_sync_with_http_info(company_id)

```ruby
begin
  # Last successful sync
  data, status_code, headers = api_instance.get_last_successful_sync_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanySyncStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->get_last_successful_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |

### Return type

[**CompanySyncStatus**](CompanySyncStatus.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_latest_sync

> <CompanySyncStatus> get_latest_sync(company_id)

Latest sync status

Gets the latest sync status

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

api_instance = OpenapiClient::SyncApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.

begin
  # Latest sync status
  result = api_instance.get_latest_sync(company_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->get_latest_sync: #{e}"
end
```

#### Using the get_latest_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanySyncStatus>, Integer, Hash)> get_latest_sync_with_http_info(company_id)

```ruby
begin
  # Latest sync status
  data, status_code, headers = api_instance.get_latest_sync_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanySyncStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->get_latest_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |

### Return type

[**CompanySyncStatus**](CompanySyncStatus.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sync_by_id

> <CompanySyncStatus> get_sync_by_id(company_id, sync_id)

Get sync status

Get the sync status for a specified sync

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

api_instance = OpenapiClient::SyncApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
sync_id = '6fb40d5e-b13e-11ed-afa1-0242ac120002' # String | Unique identifier for a sync.

begin
  # Get sync status
  result = api_instance.get_sync_by_id(company_id, sync_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->get_sync_by_id: #{e}"
end
```

#### Using the get_sync_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanySyncStatus>, Integer, Hash)> get_sync_by_id_with_http_info(company_id, sync_id)

```ruby
begin
  # Get sync status
  data, status_code, headers = api_instance.get_sync_by_id_with_http_info(company_id, sync_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanySyncStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->get_sync_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **sync_id** | **String** | Unique identifier for a sync. |  |

### Return type

[**CompanySyncStatus**](CompanySyncStatus.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sync_status

> <SyncStatus> get_sync_status(company_id)

Get sync status

Gets a list of sync statuses.

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

api_instance = OpenapiClient::SyncApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.

begin
  # Get sync status
  result = api_instance.get_sync_status(company_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->get_sync_status: #{e}"
end
```

#### Using the get_sync_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyncStatus>, Integer, Hash)> get_sync_status_with_http_info(company_id)

```ruby
begin
  # Get sync status
  data, status_code, headers = api_instance.get_sync_status_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyncStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->get_sync_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |

### Return type

[**SyncStatus**](SyncStatus.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_syncs

> <Array<CompanySyncStatus>> list_syncs(company_id)

List sync statuses

Gets a list of sync statuses

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

api_instance = OpenapiClient::SyncApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.

begin
  # List sync statuses
  result = api_instance.list_syncs(company_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->list_syncs: #{e}"
end
```

#### Using the list_syncs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CompanySyncStatus>>, Integer, Hash)> list_syncs_with_http_info(company_id)

```ruby
begin
  # List sync statuses
  data, status_code, headers = api_instance.list_syncs_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CompanySyncStatus>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->list_syncs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |

### Return type

[**Array&lt;CompanySyncStatus&gt;**](CompanySyncStatus.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## request_sync

> <SyncSummary> request_sync(company_id, opts)

Initiate new sync

Run a Commerce sync from the last successful sync up to the date provided (optional), otherwise UtcNow is used.\\r\\nIf there was no previously successful sync, the start date in the config is used.

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

api_instance = OpenapiClient::SyncApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
opts = {
  sync_to_latest_args: TODO # SyncToLatestArgs | 
}

begin
  # Initiate new sync
  result = api_instance.request_sync(company_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->request_sync: #{e}"
end
```

#### Using the request_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyncSummary>, Integer, Hash)> request_sync_with_http_info(company_id, opts)

```ruby
begin
  # Initiate new sync
  data, status_code, headers = api_instance.request_sync_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyncSummary>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->request_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **sync_to_latest_args** | [**SyncToLatestArgs**](SyncToLatestArgs.md) |  | [optional] |

### Return type

[**SyncSummary**](SyncSummary.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## request_sync_for_date_range

> <SyncSummary> request_sync_for_date_range(company_id, opts)

Initiate sync for specific range

Initiate a sync for the specified start date to the specified finish date in the request payload.

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

api_instance = OpenapiClient::SyncApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
opts = {
  sync_range: TODO # SyncRange | 
}

begin
  # Initiate sync for specific range
  result = api_instance.request_sync_for_date_range(company_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->request_sync_for_date_range: #{e}"
end
```

#### Using the request_sync_for_date_range_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyncSummary>, Integer, Hash)> request_sync_for_date_range_with_http_info(company_id, opts)

```ruby
begin
  # Initiate sync for specific range
  data, status_code, headers = api_instance.request_sync_for_date_range_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyncSummary>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncApi->request_sync_for_date_range_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **sync_range** | [**SyncRange**](SyncRange.md) |  | [optional] |

### Return type

[**SyncSummary**](SyncSummary.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


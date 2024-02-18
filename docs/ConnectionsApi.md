# OpenapiClient::ConnectionsApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_connection**](ConnectionsApi.md#create_connection) | **POST** /companies/{companyId}/connections | Create connection |
| [**get_sync_flow_url**](ConnectionsApi.md#get_sync_flow_url) | **GET** /config/sync/commerce/{commerceKey}/{accountingKey}/start | Start new sync flow |
| [**list_connections**](ConnectionsApi.md#list_connections) | **GET** /companies/{companyId}/connections | List connections |
| [**update_connection**](ConnectionsApi.md#update_connection) | **PATCH** /companies/{companyId}/connections/{connectionId} | Update connection |
| [**update_connection_authorization**](ConnectionsApi.md#update_connection_authorization) | **PUT** /companies/{companyId}/connections/{connectionId}/authorization | Update authorization |


## create_connection

> <Connection> create_connection(company_id, opts)

Create connection

﻿Creates a connection for the company by providing a valid `platformKey`.   Use the [List Integrations](https://docs.codat.io/sync-for-sync-for-commerce-api#/operations/list-integrations) endpoint to access valid platform keys. 

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

api_instance = OpenapiClient::ConnectionsApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
opts = {
  create_connection_request: OpenapiClient::CreateConnectionRequest.new # CreateConnectionRequest | 
}

begin
  # Create connection
  result = api_instance.create_connection(company_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->create_connection: #{e}"
end
```

#### Using the create_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Connection>, Integer, Hash)> create_connection_with_http_info(company_id, opts)

```ruby
begin
  # Create connection
  data, status_code, headers = api_instance.create_connection_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Connection>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->create_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **create_connection_request** | [**CreateConnectionRequest**](CreateConnectionRequest.md) |  | [optional] |

### Return type

[**Connection**](Connection.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_sync_flow_url

> <SyncFlowUrl> get_sync_flow_url(commerce_key, accounting_key, opts)

Start new sync flow

Create a new company and connections. Get a URL for Sync Flow, including a one time passcode.

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

api_instance = OpenapiClient::ConnectionsApi.new
commerce_key = 'commerce_key_example' # String | Commerce platform key
accounting_key = 'accounting_key_example' # String | Accounting platform key
opts = {
  merchant_identifier: 'merchant_identifier_example' # String | Identifier for your merchant, can be the merchant name or Codat company id.
}

begin
  # Start new sync flow
  result = api_instance.get_sync_flow_url(commerce_key, accounting_key, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->get_sync_flow_url: #{e}"
end
```

#### Using the get_sync_flow_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyncFlowUrl>, Integer, Hash)> get_sync_flow_url_with_http_info(commerce_key, accounting_key, opts)

```ruby
begin
  # Start new sync flow
  data, status_code, headers = api_instance.get_sync_flow_url_with_http_info(commerce_key, accounting_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyncFlowUrl>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->get_sync_flow_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commerce_key** | **String** | Commerce platform key |  |
| **accounting_key** | **String** | Accounting platform key |  |
| **merchant_identifier** | **String** | Identifier for your merchant, can be the merchant name or Codat company id. | [optional] |

### Return type

[**SyncFlowUrl**](SyncFlowUrl.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_connections

> <Connections> list_connections(company_id, opts)

List connections

﻿List the connections for a company.

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

api_instance = OpenapiClient::ConnectionsApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
opts = {
  page: 1, # Integer | Page number. [Read more](https://docs.codat.io/using-the-api/paging).
  page_size: 100, # Integer | Number of records to return in a page. [Read more](https://docs.codat.io/using-the-api/paging).
  query: '-modifiedDate', # String | Codat query string. [Read more](https://docs.codat.io/using-the-api/querying).
  order_by: '-modifiedDate' # String | Field to order results by. [Read more](https://docs.codat.io/using-the-api/ordering-results).
}

begin
  # List connections
  result = api_instance.list_connections(company_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->list_connections: #{e}"
end
```

#### Using the list_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Connections>, Integer, Hash)> list_connections_with_http_info(company_id, opts)

```ruby
begin
  # List connections
  data, status_code, headers = api_instance.list_connections_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Connections>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->list_connections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **page** | **Integer** | Page number. [Read more](https://docs.codat.io/using-the-api/paging). | [optional][default to 1] |
| **page_size** | **Integer** | Number of records to return in a page. [Read more](https://docs.codat.io/using-the-api/paging). | [optional][default to 100] |
| **query** | **String** | Codat query string. [Read more](https://docs.codat.io/using-the-api/querying). | [optional] |
| **order_by** | **String** | Field to order results by. [Read more](https://docs.codat.io/using-the-api/ordering-results). | [optional] |

### Return type

[**Connections**](Connections.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_connection

> <Connection> update_connection(company_id, connection_id, opts)

Update connection

Update a data connection

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

api_instance = OpenapiClient::ConnectionsApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
connection_id = '2e9d2c44-f675-40ba-8049-353bfcb5e171' # String | Unique identifier for a connection.
opts = {
  update_connection: TODO # UpdateConnection | 
}

begin
  # Update connection
  result = api_instance.update_connection(company_id, connection_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->update_connection: #{e}"
end
```

#### Using the update_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Connection>, Integer, Hash)> update_connection_with_http_info(company_id, connection_id, opts)

```ruby
begin
  # Update connection
  data, status_code, headers = api_instance.update_connection_with_http_info(company_id, connection_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Connection>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->update_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **connection_id** | **String** | Unique identifier for a connection. |  |
| **update_connection** | [**UpdateConnection**](UpdateConnection.md) |  | [optional] |

### Return type

[**Connection**](Connection.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_connection_authorization

> <Connection> update_connection_authorization(company_id, connection_id, opts)

Update authorization

Update data connection's authorization.

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

api_instance = OpenapiClient::ConnectionsApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
connection_id = '2e9d2c44-f675-40ba-8049-353bfcb5e171' # String | Unique identifier for a connection.
opts = {
  request_body: { key: 'inner_example'} # Hash<String, String> | 
}

begin
  # Update authorization
  result = api_instance.update_connection_authorization(company_id, connection_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->update_connection_authorization: #{e}"
end
```

#### Using the update_connection_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Connection>, Integer, Hash)> update_connection_authorization_with_http_info(company_id, connection_id, opts)

```ruby
begin
  # Update authorization
  data, status_code, headers = api_instance.update_connection_authorization_with_http_info(company_id, connection_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Connection>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConnectionsApi->update_connection_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **connection_id** | **String** | Unique identifier for a connection. |  |
| **request_body** | [**Hash&lt;String, String&gt;**](String.md) |  | [optional] |

### Return type

[**Connection**](Connection.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


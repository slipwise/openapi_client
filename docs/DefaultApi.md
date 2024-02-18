# OpenapiClient::DefaultApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**sync_connection_deleted_post**](DefaultApi.md#sync_connection_deleted_post) | **POST** /Sync Connection Deleted |  |


## sync_connection_deleted_post

> sync_connection_deleted_post(opts)



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

api_instance = OpenapiClient::DefaultApi.new
opts = {
  sync_connection_deleted_webhook:  # SyncConnectionDeletedWebhook | A Sync for Commerce connection is deleted.
}

begin
  
  api_instance.sync_connection_deleted_post(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->sync_connection_deleted_post: #{e}"
end
```

#### Using the sync_connection_deleted_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> sync_connection_deleted_post_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.sync_connection_deleted_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->sync_connection_deleted_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_connection_deleted_webhook** | [**SyncConnectionDeletedWebhook**](SyncConnectionDeletedWebhook.md) | A Sync for Commerce connection is deleted. | [optional] |

### Return type

nil (empty response body)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


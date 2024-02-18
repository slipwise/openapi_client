# OpenapiClient::SettingsApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_api_key**](SettingsApi.md#create_api_key) | **POST** /apiKeys | Create API key |
| [**delete_api_key**](SettingsApi.md#delete_api_key) | **DELETE** /apiKeys/{apiKeyId} | Delete API key |
| [**get_profile**](SettingsApi.md#get_profile) | **GET** /profile | Get profile |
| [**get_profile_sync_settings**](SettingsApi.md#get_profile_sync_settings) | **GET** /profile/syncSettings | Get sync settings |
| [**list_api_keys**](SettingsApi.md#list_api_keys) | **GET** /apiKeys | List API keys |
| [**update_profile**](SettingsApi.md#update_profile) | **PUT** /profile | Update profile |
| [**update_profile_sync_settings**](SettingsApi.md#update_profile_sync_settings) | **POST** /profile/syncSettings | Update all sync settings |


## create_api_key

> <ApiKeyDetails> create_api_key(opts)

Create API key

Use the *Create API keys* endpoint to generate a new API key for your client.  [API keys](https://docs.codat.io/platform-api#/schemas/apiKeys) are tokens used to control access to the API. Include this token in the `Authorization` header parameter when making API calls, following the word \"Basic\" and a space with your API key.  You can [read more](https://docs.codat.io/using-the-api/authentication) about authentication at Codat and managing API keys via the Portal UI or API.  ### Tips and pitfalls  * Your first API key is created for you. Access this key via [Codat's Portal](https://app.codat.io/developers/api-keys). * If you require multiple API keys, perform multiple calls to the *Create API keys* endpoint.  * The number of API keys is limited to 10. If you have reached the maximum amount of keys, use the *Delete API key* endpoint to delete an unused key first.

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

api_instance = OpenapiClient::SettingsApi.new
opts = {
  create_api_key: TODO # CreateApiKey | 
}

begin
  # Create API key
  result = api_instance.create_api_key(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->create_api_key: #{e}"
end
```

#### Using the create_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyDetails>, Integer, Hash)> create_api_key_with_http_info(opts)

```ruby
begin
  # Create API key
  data, status_code, headers = api_instance.create_api_key_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyDetails>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->create_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_api_key** | [**CreateApiKey**](CreateApiKey.md) |  | [optional] |

### Return type

[**ApiKeyDetails**](ApiKeyDetails.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_api_key

> <ErrorMessage> delete_api_key(api_key_id)

Delete API key

Use the *Delete API keys* endpoint to delete an existing API key, providing its valid `id` as a parameter. Note that this operation is not reversible.  [API keys](https://docs.codat.io/platform-api#/schemas/apiKeys) are tokens used to control access to the API. Include this token in the `Authorization` header parameter when making API calls, following the word \"Basic\" and a space with your API key.  You can [read more](https://docs.codat.io/using-the-api/authentication) about authentication at Codat and managing API keys via the Portal UI or API.  ### Tips and pitfalls  * It is possible to delete the last remaining API key. If this happens, a new key can be created via the [API key management page](https://app.codat.io/developers/api-keys) of the Portal. * It is possible to delete the API key used to authenticate the *Delete API key* request.

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

api_instance = OpenapiClient::SettingsApi.new
api_key_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for api key.

begin
  # Delete API key
  result = api_instance.delete_api_key(api_key_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->delete_api_key: #{e}"
end
```

#### Using the delete_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorMessage>, Integer, Hash)> delete_api_key_with_http_info(api_key_id)

```ruby
begin
  # Delete API key
  data, status_code, headers = api_instance.delete_api_key_with_http_info(api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorMessage>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->delete_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_id** | **String** | Unique identifier for api key. |  |

### Return type

[**ErrorMessage**](ErrorMessage.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile

> <Profile> get_profile

Get profile

Fetch your Codat profile.

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

api_instance = OpenapiClient::SettingsApi.new

begin
  # Get profile
  result = api_instance.get_profile
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->get_profile: #{e}"
end
```

#### Using the get_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Profile>, Integer, Hash)> get_profile_with_http_info

```ruby
begin
  # Get profile
  data, status_code, headers = api_instance.get_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Profile>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->get_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Profile**](Profile.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile_sync_settings

> <SyncSettings> get_profile_sync_settings

Get sync settings

Retrieve the [sync settings](https://docs.codat.io/knowledge-base/advanced-sync-settings) for your client. This includes how often data types should be queued to be updated, and how much history should be fetched.

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

api_instance = OpenapiClient::SettingsApi.new

begin
  # Get sync settings
  result = api_instance.get_profile_sync_settings
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->get_profile_sync_settings: #{e}"
end
```

#### Using the get_profile_sync_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyncSettings>, Integer, Hash)> get_profile_sync_settings_with_http_info

```ruby
begin
  # Get sync settings
  data, status_code, headers = api_instance.get_profile_sync_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyncSettings>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->get_profile_sync_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SyncSettings**](SyncSettings.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_api_keys

> <ApiKeys> list_api_keys

List API keys

Use the *List API keys* endpoint to return a list of all API keys that currently exist for your client. This includes keys created via the Portal UI or the *Create API keys* endpoint.  [API keys](https://docs.codat.io/platform-api#/schemas/apiKeys) are tokens used to control access to the API. Include this token in the `Authorization` header parameter when making API calls, following the word \"Basic\" and a space with your API key.  You can [read more](https://docs.codat.io/using-the-api/authentication) about authentication at Codat and managing API keys via the Portal UI or API.

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

api_instance = OpenapiClient::SettingsApi.new

begin
  # List API keys
  result = api_instance.list_api_keys
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->list_api_keys: #{e}"
end
```

#### Using the list_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeys>, Integer, Hash)> list_api_keys_with_http_info

```ruby
begin
  # List API keys
  data, status_code, headers = api_instance.list_api_keys_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeys>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->list_api_keys_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiKeys**](ApiKeys.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_profile

> <Profile> update_profile(opts)

Update profile

Update your Codat profile

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

api_instance = OpenapiClient::SettingsApi.new
opts = {
  profile: OpenapiClient::Profile.new({name: 'Bob's Burgers', redirect_url: 'https://bobs-burgers.{countrySuffix}/{companyId}'}) # Profile | All fields should be included when updating your profile.
}

begin
  # Update profile
  result = api_instance.update_profile(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->update_profile: #{e}"
end
```

#### Using the update_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Profile>, Integer, Hash)> update_profile_with_http_info(opts)

```ruby
begin
  # Update profile
  data, status_code, headers = api_instance.update_profile_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Profile>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->update_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile** | [**Profile**](Profile.md) | All fields should be included when updating your profile. | [optional] |

### Return type

[**Profile**](Profile.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_profile_sync_settings

> update_profile_sync_settings(opts)

Update all sync settings

Update sync settings for all data types.

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

api_instance = OpenapiClient::SettingsApi.new
opts = {
  UNKNOWN_PARAM_NAME: TODO #  | Include a `syncSetting` object for each data type. `syncFromWindow`, `syncFromUTC` & `monthsToSync` only need to be included if you wish to set a value for them.
}

begin
  # Update all sync settings
  api_instance.update_profile_sync_settings(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->update_profile_sync_settings: #{e}"
end
```

#### Using the update_profile_sync_settings_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_profile_sync_settings_with_http_info(opts)

```ruby
begin
  # Update all sync settings
  data, status_code, headers = api_instance.update_profile_sync_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SettingsApi->update_profile_sync_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **UNKNOWN_PARAM_NAME** | [****](.md) | Include a &#x60;syncSetting&#x60; object for each data type. &#x60;syncFromWindow&#x60;, &#x60;syncFromUTC&#x60; &amp; &#x60;monthsToSync&#x60; only need to be included if you wish to set a value for them. | [optional] |

### Return type

nil (empty response body)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


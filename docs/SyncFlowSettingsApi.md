# OpenapiClient::SyncFlowSettingsApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_config_text_sync_flow**](SyncFlowSettingsApi.md#get_config_text_sync_flow) | **GET** /sync/commerce/config/ui/text | Get preferences for text fields |
| [**get_visible_accounts**](SyncFlowSettingsApi.md#get_visible_accounts) | **GET** /clients/{clientId}/config/ui/accounts/platform/{platformKey} | List visible accounts |
| [**update_config_text_sync_flow**](SyncFlowSettingsApi.md#update_config_text_sync_flow) | **PATCH** /sync/commerce/config/ui/text | Update preferences for text fields |
| [**update_visible_accounts_sync_flow**](SyncFlowSettingsApi.md#update_visible_accounts_sync_flow) | **POST** /sync/commerce/config/ui/accounts/platform/{platformKey} | Update visible accounts |


## get_config_text_sync_flow

> <Hash<String, Localization>> get_config_text_sync_flow(locale)

Get preferences for text fields

Return preferences set for the text fields on sync flow.

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

api_instance = OpenapiClient::SyncFlowSettingsApi.new
locale = 'en-us' # String | Localization identifier for English (US) or French.

begin
  # Get preferences for text fields
  result = api_instance.get_config_text_sync_flow(locale)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncFlowSettingsApi->get_config_text_sync_flow: #{e}"
end
```

#### Using the get_config_text_sync_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, Localization>>, Integer, Hash)> get_config_text_sync_flow_with_http_info(locale)

```ruby
begin
  # Get preferences for text fields
  data, status_code, headers = api_instance.get_config_text_sync_flow_with_http_info(locale)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, Localization>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncFlowSettingsApi->get_config_text_sync_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locale** | **String** | Localization identifier for English (US) or French. |  |

### Return type

[**Hash&lt;String, Localization&gt;**](Localization.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_visible_accounts

> <VisibleAccounts> get_visible_accounts(client_id, platform_key)

List visible accounts

Return accounts which are visible on sync flow.

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

api_instance = OpenapiClient::SyncFlowSettingsApi.new
client_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique identifier for your client in Codat.
platform_key = 'gbol' # String | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys.

begin
  # List visible accounts
  result = api_instance.get_visible_accounts(client_id, platform_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncFlowSettingsApi->get_visible_accounts: #{e}"
end
```

#### Using the get_visible_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VisibleAccounts>, Integer, Hash)> get_visible_accounts_with_http_info(client_id, platform_key)

```ruby
begin
  # List visible accounts
  data, status_code, headers = api_instance.get_visible_accounts_with_http_info(client_id, platform_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VisibleAccounts>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncFlowSettingsApi->get_visible_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | Unique identifier for your client in Codat. |  |
| **platform_key** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. |  |

### Return type

[**VisibleAccounts**](VisibleAccounts.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_config_text_sync_flow

> <Hash<String, Localization>> update_config_text_sync_flow(locale, opts)

Update preferences for text fields

Set preferences for the text fields on sync flow.

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

api_instance = OpenapiClient::SyncFlowSettingsApi.new
locale = 'en-us' # String | Localization identifier for English (US) or French.
opts = {
  request_body: { key: TODO} # Hash<String, Localization> | 
}

begin
  # Update preferences for text fields
  result = api_instance.update_config_text_sync_flow(locale, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncFlowSettingsApi->update_config_text_sync_flow: #{e}"
end
```

#### Using the update_config_text_sync_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, Localization>>, Integer, Hash)> update_config_text_sync_flow_with_http_info(locale, opts)

```ruby
begin
  # Update preferences for text fields
  data, status_code, headers = api_instance.update_config_text_sync_flow_with_http_info(locale, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, Localization>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncFlowSettingsApi->update_config_text_sync_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locale** | **String** | Localization identifier for English (US) or French. |  |
| **request_body** | [**Hash&lt;String, Localization&gt;**](Localization.md) |  | [optional] |

### Return type

[**Hash&lt;String, Localization&gt;**](Localization.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_visible_accounts_sync_flow

> <VisibleAccounts> update_visible_accounts_sync_flow(platform_key, opts)

Update visible accounts

Update which accounts are visible on sync flow.

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

api_instance = OpenapiClient::SyncFlowSettingsApi.new
platform_key = 'gbol' # String | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys.
opts = {
  visible_accounts: OpenapiClient::VisibleAccounts.new # VisibleAccounts | 
}

begin
  # Update visible accounts
  result = api_instance.update_visible_accounts_sync_flow(platform_key, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncFlowSettingsApi->update_visible_accounts_sync_flow: #{e}"
end
```

#### Using the update_visible_accounts_sync_flow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VisibleAccounts>, Integer, Hash)> update_visible_accounts_sync_flow_with_http_info(platform_key, opts)

```ruby
begin
  # Update visible accounts
  data, status_code, headers = api_instance.update_visible_accounts_sync_flow_with_http_info(platform_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VisibleAccounts>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SyncFlowSettingsApi->update_visible_accounts_sync_flow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_key** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. |  |
| **visible_accounts** | [**VisibleAccounts**](VisibleAccounts.md) |  | [optional] |

### Return type

[**VisibleAccounts**](VisibleAccounts.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


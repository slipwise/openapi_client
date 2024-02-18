# OpenapiClient::UpdateProfileSyncSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | Unique identifier for your client in Codat. |  |
| **settings** | [**Array&lt;SyncSetting&gt;**](SyncSetting.md) |  |  |
| **overrides_defaults** | **Boolean** | Set to &#x60;True&#x60; if you want to override default [sync settings](https://docs.codat.io/knowledge-base/advanced-sync-settings). | [default to true] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateProfileSyncSettingsRequest.new(
  client_id: null,
  settings: null,
  overrides_defaults: null
)
```


# OpenapiClient::ConnectionStatusChangedWebhookData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_connection_id** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. | [optional] |
| **new_status** | [**DataConnectionStatus**](DataConnectionStatus.md) |  | [optional] |
| **old_status** | [**DataConnectionStatus**](DataConnectionStatus.md) |  | [optional] |
| **platform_key** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ConnectionStatusChangedWebhookData.new(
  data_connection_id: gbol,
  new_status: null,
  old_status: null,
  platform_key: gbol
)
```


# OpenapiClient::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **Object** | The type of webhook. |  |
| **company_id** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. | [optional] |
| **notifiers** | [**WebhookNotifier**](WebhookNotifier.md) |  |  |
| **id** | **String** | Unique identifier for the configured notification. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Webhook.new(
  type: null,
  company_id: gbol,
  notifiers: null,
  id: ff89c50e-a719-4ef5-a182-9917e53927b6
)
```


# OpenapiClient::DatasetDataChangedWebhookData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_type** | [**DataType**](DataType.md) |  | [optional] |
| **dataset_id** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DatasetDataChangedWebhookData.new(
  data_type: null,
  dataset_id: gbol
)
```


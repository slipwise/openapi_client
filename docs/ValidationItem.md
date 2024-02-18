# OpenapiClient::ValidationItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_id** | **String** | Unique identifier for a validation item. | [optional] |
| **message** | **String** | A message outlining validation item&#39;s issue. | [optional] |
| **validator_name** | **String** | Name of validator. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ValidationItem.new(
  item_id: null,
  message: null,
  validator_name: null
)
```


# OpenapiClient::PushOptionChoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | Allowed value for field. | [optional] |
| **type** | [**PushOptionType**](PushOptionType.md) |  | [optional] |
| **display_name** | **String** | The property&#39;s display name. | [optional] |
| **description** | **String** | A description of the property. | [optional] |
| **required** | **Boolean** | The property is required if &#x60;True&#x60;. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PushOptionChoice.new(
  value: null,
  type: null,
  display_name: null,
  description: null,
  required: null
)
```


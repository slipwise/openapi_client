# OpenapiClient::PushOptionProperty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**PushOptionType**](PushOptionType.md) |  |  |
| **display_name** | **String** | The property&#39;s display name. |  |
| **description** | **String** | A description of the property. |  |
| **required** | **Boolean** | The property is required if &#x60;True&#x60;. |  |
| **properties** | [**Hash&lt;String, PushOptionProperty&gt;**](PushOptionProperty.md) |  | [optional] |
| **options** | [**Array&lt;PushOptionChoice&gt;**](PushOptionChoice.md) |  | [optional] |
| **validation** | [**PushValidationInfo**](PushValidationInfo.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PushOptionProperty.new(
  type: null,
  display_name: null,
  description: null,
  required: null,
  properties: null,
  options: null,
  validation: null
)
```


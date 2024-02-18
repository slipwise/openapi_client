# OpenapiClient::PushFieldValidation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | Field name that resulted in the validation issue. | [optional] |
| **details** | **String** | Details on the validation issue. |  |
| **ref** | **String** | Unique reference identifier for the validation issue. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PushFieldValidation.new(
  field: null,
  details: null,
  ref: null
)
```


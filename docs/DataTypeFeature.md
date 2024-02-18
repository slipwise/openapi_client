# OpenapiClient::DataTypeFeature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_type** | **String** | Available Data types | [optional] |
| **supported_features** | [**Array&lt;SupportedFeature&gt;**](SupportedFeature.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DataTypeFeature.new(
  data_type: invoices,
  supported_features: null
)
```


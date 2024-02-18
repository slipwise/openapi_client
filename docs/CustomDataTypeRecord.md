# OpenapiClient::CustomDataTypeRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the record. | [optional] |
| **content** | **Hash&lt;String, Object&gt;** | Values from the source system for the properties defined in the custom data type configuration. | [optional] |
| **modified_date** | [**ModifiedDate**](ModifiedDate.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CustomDataTypeRecord.new(
  id: null,
  content: null,
  modified_date: null
)
```


# OpenapiClient::CustomDataTypeRecords

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | [**Array&lt;CustomDataTypeRecord&gt;**](CustomDataTypeRecord.md) |  | [optional] |
| **page_number** | **Integer** | Current page number. | [optional] |
| **page_size** | **Integer** | Number of items to return in results array. | [optional] |
| **total_results** | **Integer** | Total number of items. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CustomDataTypeRecords.new(
  results: null,
  page_number: null,
  page_size: null,
  total_results: null
)
```


# OpenapiClient::PushOperationChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**PushChangeType**](PushChangeType.md) |  | [optional] |
| **record_ref** | [**PushOperationRef**](PushOperationRef.md) |  | [optional] |
| **attachment_id** | **String** | Unique identifier for the attachment created otherwise null. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PushOperationChange.new(
  type: null,
  record_ref: null,
  attachment_id: null
)
```


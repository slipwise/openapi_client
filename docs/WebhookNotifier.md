# OpenapiClient::WebhookNotifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **emails** | **Array&lt;String&gt;** |  | [optional] |
| **webhook** | **String** | The URI the webhook service will POST events. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhookNotifier.new(
  emails: null,
  webhook: https://webhook.client.com
)
```


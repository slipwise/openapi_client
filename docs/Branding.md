# OpenapiClient::Branding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **logo** | [**BrandingLogo**](BrandingLogo.md) |  | [optional] |
| **button** | [**BrandingButton**](BrandingButton.md) |  | [optional] |
| **source_id** | **String** | A source-specific ID used to distinguish between different sources originating from the same data connection. In general, a data connection is a single data source. However, for TrueLayer, &#x60;sourceId&#x60; is associated with a specific bank and has a many-to-one relationship with the &#x60;integrationId&#x60;. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Branding.new(
  logo: null,
  button: null,
  source_id: 35b92968-9851-4095-ad60-395c95cbcba4
)
```


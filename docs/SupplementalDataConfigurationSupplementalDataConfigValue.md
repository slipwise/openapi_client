# OpenapiClient::SupplementalDataConfigurationSupplementalDataConfigValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_source** | **String** | The underlying endpoint of the source system which the configuration is targeting.  | [optional] |
| **pull_data** | **Hash&lt;String, String&gt;** | The additional properties that are required when pulling records. | [optional] |
| **push_data** | **Hash&lt;String, String&gt;** | The additional properties that are required to create and/or update records. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SupplementalDataConfigurationSupplementalDataConfigValue.new(
  data_source: null,
  pull_data: null,
  push_data: null
)
```


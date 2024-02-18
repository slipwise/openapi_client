# OpenapiClient::CustomDataTypeConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_source** | **String** | Underlying endpoint of the source platform that will serve as a data source for the custom data type. This value is not validated by Codat. | [optional] |
| **required_data** | **Hash&lt;String, String&gt;** | Properties required to be fetched from the underlying platform for the custom data type that is being configured. This value is not validated by Codat. | [optional] |
| **key_by** | **Array&lt;String&gt;** | An array of properties from the source system that can be used to uniquely identify the records returned for the custom data type. This value is not validated by Codat. | [optional] |
| **source_modified_date** | **Array&lt;String&gt;** | Property in the source platform nominated by the client that defines the date when a record was last modified there. This value is not validated by Codat. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CustomDataTypeConfiguration.new(
  data_source: null,
  required_data: null,
  key_by: null,
  source_modified_date: null
)
```


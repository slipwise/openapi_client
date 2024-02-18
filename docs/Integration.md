# OpenapiClient::Integration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. |  |
| **logo_url** | **String** | Static url for integration&#39;s logo. |  |
| **name** | **String** | Name of integration. |  |
| **enabled** | **Boolean** | Whether this integration is enabled for your customers to use. |  |
| **source_id** | **String** | A source-specific ID used to distinguish between different sources originating from the same data connection. In general, a data connection is a single data source. However, for TrueLayer, &#x60;sourceId&#x60; is associated with a specific bank and has a many-to-one relationship with the &#x60;integrationId&#x60;. | [optional] |
| **source_type** | [**SourceType**](SourceType.md) |  | [optional] |
| **integration_id** | **String** | A Codat ID representing the integration. | [optional] |
| **is_offline_connector** | **Boolean** | &#x60;True&#x60; if the integration is to an application installed and run locally on an SMBs computer. | [optional] |
| **is_beta** | **Boolean** | &#x60;True&#x60; if the integration is currently in beta release. | [optional] |
| **data_provided_by** | **String** | The name of the data provider. | [optional] |
| **datatype_features** | [**Array&lt;DataTypeFeature&gt;**](DataTypeFeature.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Integration.new(
  key: gbol,
  logo_url: null,
  name: Xero,
  enabled: null,
  source_id: 35b92968-9851-4095-ad60-395c95cbcba4,
  source_type: null,
  integration_id: fd321cb6-7963-4506-b873-e99593a45e30,
  is_offline_connector: null,
  is_beta: null,
  data_provided_by: null,
  datatype_features: null
)
```


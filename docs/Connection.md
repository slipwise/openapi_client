# OpenapiClient::Connection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. |  |
| **integration_id** | **String** | A Codat ID representing the integration. |  |
| **integration_key** | **String** | A unique four-character ID that identifies the platform of the company&#39;s data connection. This ensures continuity if the platform changes its name in the future. |  |
| **source_id** | **String** | A source-specific ID used to distinguish between different sources originating from the same data connection. In general, a data connection is a single data source. However, for TrueLayer, &#x60;sourceId&#x60; is associated with a specific bank and has a many-to-one relationship with the &#x60;integrationId&#x60;. |  |
| **source_type** | [**SourceType**](SourceType.md) |  |  |
| **platform_name** | **String** | Name of integration connected to company. |  |
| **link_url** | **String** | The link URL your customers can use to authorize access to their business application. |  |
| **status** | [**DataConnectionStatus**](DataConnectionStatus.md) |  |  |
| **last_sync** | **String** | In Codat&#39;s data model, dates and times are represented using the &lt;a class&#x3D;\&quot;external\&quot; href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_8601\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 8601 standard&lt;/a&gt;. Date and time fields are formatted as strings; for example:  &#x60;&#x60;&#x60; 2020-10-08T22:40:50Z 2021-01-01T00:00:00 &#x60;&#x60;&#x60;    When syncing data that contains &#x60;DateTime&#x60; fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): &#x60;2021-11-15T06:00:00Z&#x60; - Unqualified local time: &#x60;2021-11-15T01:00:00&#x60; - UTC time offsets: &#x60;2021-11-15T01:00:00-05:00&#x60;  &gt; Time zones &gt;  &gt; Not all dates from Codat will contain information about time zones.   &gt; Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced. | [optional] |
| **created** | **String** | In Codat&#39;s data model, dates and times are represented using the &lt;a class&#x3D;\&quot;external\&quot; href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_8601\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 8601 standard&lt;/a&gt;. Date and time fields are formatted as strings; for example:  &#x60;&#x60;&#x60; 2020-10-08T22:40:50Z 2021-01-01T00:00:00 &#x60;&#x60;&#x60;    When syncing data that contains &#x60;DateTime&#x60; fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): &#x60;2021-11-15T06:00:00Z&#x60; - Unqualified local time: &#x60;2021-11-15T01:00:00&#x60; - UTC time offsets: &#x60;2021-11-15T01:00:00-05:00&#x60;  &gt; Time zones &gt;  &gt; Not all dates from Codat will contain information about time zones.   &gt; Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced. |  |
| **data_connection_errors** | [**Array&lt;DataConnectionError&gt;**](DataConnectionError.md) |  | [optional] |
| **connection_info** | **Hash&lt;String, String&gt;** |  | [optional] |
| **additional_properties** | **Object** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Connection.new(
  id: gbol,
  integration_id: fd321cb6-7963-4506-b873-e99593a45e30,
  integration_key: null,
  source_id: 35b92968-9851-4095-ad60-395c95cbcba4,
  source_type: null,
  platform_name: null,
  link_url: https://link-api.codat.io/companies/86bd88cb-44ab-4dfb-b32f-87b19b14287f/connections/2e2eb431-c1fa-4dc9-93fa-d29781c12bcd/start,
  status: null,
  last_sync: null,
  created: null,
  data_connection_errors: null,
  connection_info: null,
  additional_properties: null
)
```


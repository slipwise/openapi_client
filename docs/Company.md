# OpenapiClient::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys. |  |
| **name** | **String** | The name of the company |  |
| **description** | **String** | Additional information about the company. This can be used to store foreign IDs, references, etc. | [optional] |
| **platform** | **String** | &#x60;platformKeys&#x60; name used when creating the company. | [optional] |
| **redirect** | **String** | The &#x60;redirect&#x60; [Link URL](https://docs.codat.io/auth-flow/authorize-hosted-link) enabling the customer to start their auth flow journey for the company. |  |
| **last_sync** | **String** | In Codat&#39;s data model, dates and times are represented using the &lt;a class&#x3D;\&quot;external\&quot; href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_8601\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 8601 standard&lt;/a&gt;. Date and time fields are formatted as strings; for example:  &#x60;&#x60;&#x60; 2020-10-08T22:40:50Z 2021-01-01T00:00:00 &#x60;&#x60;&#x60;    When syncing data that contains &#x60;DateTime&#x60; fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): &#x60;2021-11-15T06:00:00Z&#x60; - Unqualified local time: &#x60;2021-11-15T01:00:00&#x60; - UTC time offsets: &#x60;2021-11-15T01:00:00-05:00&#x60;  &gt; Time zones &gt;  &gt; Not all dates from Codat will contain information about time zones.   &gt; Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced. | [optional] |
| **created** | **String** | In Codat&#39;s data model, dates and times are represented using the &lt;a class&#x3D;\&quot;external\&quot; href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_8601\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 8601 standard&lt;/a&gt;. Date and time fields are formatted as strings; for example:  &#x60;&#x60;&#x60; 2020-10-08T22:40:50Z 2021-01-01T00:00:00 &#x60;&#x60;&#x60;    When syncing data that contains &#x60;DateTime&#x60; fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): &#x60;2021-11-15T06:00:00Z&#x60; - Unqualified local time: &#x60;2021-11-15T01:00:00&#x60; - UTC time offsets: &#x60;2021-11-15T01:00:00-05:00&#x60;  &gt; Time zones &gt;  &gt; Not all dates from Codat will contain information about time zones.   &gt; Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced. | [optional] |
| **created_by_user_name** | **String** | Name of user that created the company in Codat. | [optional] |
| **data_connections** | [**Array&lt;Connection&gt;**](Connection.md) |  | [optional] |
| **groups** | [**Array&lt;GroupReference&gt;**](GroupReference.md) | An array of groups the company has been assigned to. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Company.new(
  id: gbol,
  name: Codat Ltd.,
  description: Requested early access to the new financing scheme.,
  platform: Xero,
  redirect: https://link.codat.io/company/27628208-459c-46a2-a705-5641ce25f739,
  last_sync: null,
  created: null,
  created_by_user_name: null,
  data_connections: null,
  groups: null
)
```


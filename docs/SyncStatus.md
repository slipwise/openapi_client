# OpenapiClient::SyncStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commerce_sync_id** | **String** | Unique identifier for the sync in Codat. | [optional] |
| **sync_id** | **String** | Unique identifier for the sync in Codat. | [optional] |
| **sync_status_code** | **Integer** | Numerical status code sync of the company data. | [optional] |
| **sync_status** | **String** | Status of the sync of the company data. This is linked to status code. | [optional] |
| **error_message** | **String** | Friendly error message for the sync operation. | [optional] |
| **sync_exception_message** | **String** | Exception message for the sync operation. | [optional] |
| **sync_utc** | **String** | In Codat&#39;s data model, dates and times are represented using the &lt;a class&#x3D;\&quot;external\&quot; href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_8601\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 8601 standard&lt;/a&gt;. Date and time fields are formatted as strings; for example:  &#x60;&#x60;&#x60; 2020-10-08T22:40:50Z 2021-01-01T00:00:00 &#x60;&#x60;&#x60;    When syncing data that contains &#x60;DateTime&#x60; fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): &#x60;2021-11-15T06:00:00Z&#x60; - Unqualified local time: &#x60;2021-11-15T01:00:00&#x60; - UTC time offsets: &#x60;2021-11-15T01:00:00-05:00&#x60;  &gt; Time zones &gt;  &gt; Not all dates from Codat will contain information about time zones.   &gt; Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced. | [optional] |
| **data_pushed** | **Boolean** | Boolean indicator for data being pushed during a sync operation. | [optional] |
| **data_connections** | [**Array&lt;Connection&gt;**](Connection.md) | Array of containing objects data connection information for the company. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SyncStatus.new(
  commerce_sync_id: 8d0a044e-b683-4fc9-bd0d-bfb2ca5731b7,
  sync_id: 730dcf2e-3afc-4d83-bb90-9f4b95dddf68,
  sync_status_code: 4000,
  sync_status: ValidateError, Pending,
  error_message: Customer 3b9bf2ed-a618-4af2-80f2-f2b57fddc748 is not in an Active state. (Archived),
  sync_exception_message: Customer 3b9bf2ed-a618-4af2-80f2-f2b57fddc748 is not in an Active state. (Archived),
  sync_utc: null,
  data_pushed: true,
  data_connections: null
)
```


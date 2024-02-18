# OpenapiClient::CompanySyncStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for your SMB in Codat. | [optional] |
| **sync_id** | **String** | Unique identifier of the sync. | [optional] |
| **sync_status_code** | **Integer** | Status code of the sync. | [optional] |
| **sync_status** | **String** | Text status of the sync. | [optional] |
| **error_message** | **String** | Error message of the sync. | [optional] |
| **sync_exception_message** | **String** | Exception message of the sync. | [optional] |
| **sync_utc** | **String** | In Codat&#39;s data model, dates and times are represented using the &lt;a class&#x3D;\&quot;external\&quot; href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_8601\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 8601 standard&lt;/a&gt;. Date and time fields are formatted as strings; for example:  &#x60;&#x60;&#x60; 2020-10-08T22:40:50Z 2021-01-01T00:00:00 &#x60;&#x60;&#x60;    When syncing data that contains &#x60;DateTime&#x60; fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): &#x60;2021-11-15T06:00:00Z&#x60; - Unqualified local time: &#x60;2021-11-15T01:00:00&#x60; - UTC time offsets: &#x60;2021-11-15T01:00:00-05:00&#x60;  &gt; Time zones &gt;  &gt; Not all dates from Codat will contain information about time zones.   &gt; Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced. | [optional] |
| **data_pushed** | **Boolean** | Boolean of whether the sync resulted in data being pushed. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CompanySyncStatus.new(
  company_id: d4d73051-ed31-42b6-99f6-d288cd940992,
  sync_id: a6a22aff-a43a-411d-a910-2dae73217cce,
  sync_status_code: 2000,
  sync_status: Completed,
  error_message: null,
  sync_exception_message: null,
  sync_utc: null,
  data_pushed: null
)
```


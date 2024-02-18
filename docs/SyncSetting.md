# OpenapiClient::SyncSetting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_type** | [**DataType**](DataType.md) |  |  |
| **fetch_on_first_link** | **Boolean** | Whether this data type should be queued after a company has authorized a connection. |  |
| **sync_schedule** | **Integer** | Number of hours after which this data type should be refreshed. |  |
| **sync_order** | **Integer** | The sync in which data types are queued for a sync. |  |
| **sync_from_utc** | **String** | In Codat&#39;s data model, dates and times are represented using the &lt;a class&#x3D;\&quot;external\&quot; href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_8601\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 8601 standard&lt;/a&gt;. Date and time fields are formatted as strings; for example:  &#x60;&#x60;&#x60; 2020-10-08T22:40:50Z 2021-01-01T00:00:00 &#x60;&#x60;&#x60;    When syncing data that contains &#x60;DateTime&#x60; fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): &#x60;2021-11-15T06:00:00Z&#x60; - Unqualified local time: &#x60;2021-11-15T01:00:00&#x60; - UTC time offsets: &#x60;2021-11-15T01:00:00-05:00&#x60;  &gt; Time zones &gt;  &gt; Not all dates from Codat will contain information about time zones.   &gt; Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced. | [optional] |
| **sync_from_window** | **Integer** | Number of months of data to be fetched. Set this *or* &#x60;syncFromUTC&#x60;. | [optional] |
| **months_to_sync** | **Integer** | Months of data to fetch, for report data types (&#x60;balanceSheet&#x60; &amp; &#x60;profitAndLoss&#x60;) only. | [optional] |
| **is_locked** | **Boolean** | &#x60;True&#x60; if the [sync setting](https://docs.codat.io/knowledge-base/advanced-sync-settings) is locked. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SyncSetting.new(
  data_type: null,
  fetch_on_first_link: null,
  sync_schedule: 24,
  sync_order: null,
  sync_from_utc: null,
  sync_from_window: 24,
  months_to_sync: 24,
  is_locked: null
)
```


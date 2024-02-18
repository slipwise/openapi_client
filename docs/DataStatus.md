# OpenapiClient::DataStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_type** | **String** | Available Data types |  |
| **last_successful_sync** | **String** | In Codat&#39;s data model, dates and times are represented using the &lt;a class&#x3D;\&quot;external\&quot; href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_8601\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 8601 standard&lt;/a&gt;. Date and time fields are formatted as strings; for example:  &#x60;&#x60;&#x60; 2020-10-08T22:40:50Z 2021-01-01T00:00:00 &#x60;&#x60;&#x60;    When syncing data that contains &#x60;DateTime&#x60; fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): &#x60;2021-11-15T06:00:00Z&#x60; - Unqualified local time: &#x60;2021-11-15T01:00:00&#x60; - UTC time offsets: &#x60;2021-11-15T01:00:00-05:00&#x60;  &gt; Time zones &gt;  &gt; Not all dates from Codat will contain information about time zones.   &gt; Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced. |  |
| **current_status** | **String** | The current status of the dataset in Codat&#39;s cache. |  |
| **latest_sync_id** | **String** | Unique identifier for most recent sync of data type. | [optional] |
| **latest_successful_sync_id** | **String** | Unique identifier for the most recent successful sync of data type. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DataStatus.new(
  data_type: invoices,
  last_successful_sync: null,
  current_status: null,
  latest_sync_id: ad474a37-2003-478e-baee-9af9f1ec2fe3,
  latest_successful_sync_id: 8220fc90-55b6-47bc-9417-48ac6ea93101
)
```


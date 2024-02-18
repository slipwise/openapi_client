# OpenapiClient::PullOperation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the pull operation. |  |
| **company_id** | **String** | Unique identifier of the company associated to this pull operation. |  |
| **connection_id** | **String** | Unique identifier of the connection associated to this pull operation. |  |
| **data_type** | **String** | The data type you are requesting in a pull operation. |  |
| **status** | **String** | The current status of the pull operation. |  |
| **status_description** | **String** | Additional information about the dataset status. | [optional] |
| **error_message** | **String** | A message about a transient or persistent error. | [optional] |
| **requested** | **String** | In Codat&#39;s data model, dates and times are represented using the &lt;a class&#x3D;\&quot;external\&quot; href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_8601\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 8601 standard&lt;/a&gt;. Date and time fields are formatted as strings; for example:  &#x60;&#x60;&#x60; 2020-10-08T22:40:50Z 2021-01-01T00:00:00 &#x60;&#x60;&#x60;    When syncing data that contains &#x60;DateTime&#x60; fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): &#x60;2021-11-15T06:00:00Z&#x60; - Unqualified local time: &#x60;2021-11-15T01:00:00&#x60; - UTC time offsets: &#x60;2021-11-15T01:00:00-05:00&#x60;  &gt; Time zones &gt;  &gt; Not all dates from Codat will contain information about time zones.   &gt; Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced. |  |
| **completed** | **String** | In Codat&#39;s data model, dates and times are represented using the &lt;a class&#x3D;\&quot;external\&quot; href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_8601\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 8601 standard&lt;/a&gt;. Date and time fields are formatted as strings; for example:  &#x60;&#x60;&#x60; 2020-10-08T22:40:50Z 2021-01-01T00:00:00 &#x60;&#x60;&#x60;    When syncing data that contains &#x60;DateTime&#x60; fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): &#x60;2021-11-15T06:00:00Z&#x60; - Unqualified local time: &#x60;2021-11-15T01:00:00&#x60; - UTC time offsets: &#x60;2021-11-15T01:00:00-05:00&#x60;  &gt; Time zones &gt;  &gt; Not all dates from Codat will contain information about time zones.   &gt; Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced. | [optional] |
| **progress** | **Integer** | An integer signifying the progress of the pull operation. |  |
| **is_completed** | **Boolean** | &#x60;True&#x60; if the pull operation is completed successfully. The &#x60;isCompleted&#x60; property is not queryable. To filter failed pull operations, query by &#x60;status!&#x3D;Complete&amp;&amp;status!&#x3D;NotSupported&#x60; instead. |  |
| **is_errored** | **Boolean** | &#x60;True&#x60; if the pull operation entered an error state. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PullOperation.new(
  id: 943accd0-4247-42d8-865b-363c8629e1da,
  company_id: 22ece347-e5f6-4896-95e0-35a4c7f17023,
  connection_id: 50830828-7d39-4367-b0eb-5ddb2de5faa5,
  data_type: null,
  status: Complete,
  status_description: Paused until 2022-10-23T00:00:00.000Z,
  error_message: null,
  requested: null,
  completed: null,
  progress: null,
  is_completed: null,
  is_errored: null
)
```


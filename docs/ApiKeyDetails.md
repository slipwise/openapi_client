# OpenapiClient::ApiKeyDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the API key. | [optional] |
| **name** | **String** | A meaningful name assigned to the API key. | [optional] |
| **api_key** | **String** | The API key value used to make authenticated http requests. | [optional] |
| **created_date** | **String** | In Codat&#39;s data model, dates and times are represented using the &lt;a class&#x3D;\&quot;external\&quot; href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_8601\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 8601 standard&lt;/a&gt;. Date and time fields are formatted as strings; for example:  &#x60;&#x60;&#x60; 2020-10-08T22:40:50Z 2021-01-01T00:00:00 &#x60;&#x60;&#x60;    When syncing data that contains &#x60;DateTime&#x60; fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): &#x60;2021-11-15T06:00:00Z&#x60; - Unqualified local time: &#x60;2021-11-15T01:00:00&#x60; - UTC time offsets: &#x60;2021-11-15T01:00:00-05:00&#x60;  &gt; Time zones &gt;  &gt; Not all dates from Codat will contain information about time zones.   &gt; Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ApiKeyDetails.new(
  id: e288a972-b402-4b21-93f9-b5335ae5679c,
  name: azure-invoice-finance-processor,
  api_key: ztHQGvnC4XN2CgUhaDWEG4ySLUJqWjp7zkbZkGHd,
  created_date: null
)
```


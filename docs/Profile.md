# OpenapiClient::Profile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name given to the instance. |  |
| **logo_url** | **String** | Static url to your organization&#39;s logo. | [optional] |
| **icon_url** | **String** | Static url to your organization&#39;s icon. | [optional] |
| **redirect_url** | **String** | The redirect URL pasted on to the SMB once Codat&#39;s [Hosted Link](https://docs.codat.io/auth-flow/authorize-hosted-link) has been completed by the SMB. |  |
| **white_list_urls** | **Array&lt;String&gt;** | A list of urls that are allowed to communicate with Codat. If empty any url is allowed to communicate with Codat. | [optional] |
| **api_key** | **String** | The API key for this Codat instance. | [optional] |
| **alert_auth_header** | **String** | Alert or webhooks authorization header. | [optional] |
| **confirm_company_name** | **Boolean** | &#x60;True&#x60; if the company name has been confirmed. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Profile.new(
  name: Bob&#39;s Burgers,
  logo_url: https://client-images.codat.io/logo/042399f5-d104-4f38-9ce8-cac3524f4e88_5806cb1f-7342-4c0e-a0a8-99bfbc47b0ff.png,
  icon_url: https://client-images.codat.io/icon/042399f5-d104-4f38-9ce8-cac3524f4e88_3f5623af-d992-4c22-bc08-e58c520a8526.ico,
  redirect_url: https://bobs-burgers.{countrySuffix}/{companyId},
  white_list_urls: null,
  api_key: sartANTjHAkLdbyDfaynoTQb7pkmj6hXHmnQKMrB,
  alert_auth_header: Bearer tXEiHiRK7XCtI8TNHbpGs1LI1pumdb4Cl1QIo7B2,
  confirm_company_name: null
)
```


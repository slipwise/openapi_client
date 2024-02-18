# OpenapiClient::CompaniesApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_company**](CompaniesApi.md#create_company) | **POST** /companies | Create company |
| [**delete_company**](CompaniesApi.md#delete_company) | **DELETE** /companies/{companyId} | Delete a company |
| [**get_company**](CompaniesApi.md#get_company) | **GET** /companies/{companyId} | Get company |
| [**list_companies**](CompaniesApi.md#list_companies) | **GET** /companies | List companies |
| [**update_company**](CompaniesApi.md#update_company) | **PUT** /companies/{companyId} | Update company |


## create_company

> <Company> create_company(opts)

Create company

﻿Use the *Create company* endpoint to create a new [company](https://docs.codat.io/platform-api#/schemas/Company) that represents your customer in Codat.   A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data.  If forbidden characters (see `name` pattern) are present in the request, a company will be created with the forbidden characters removed. For example, `Company (Codat[1])` with be created as `Company Codat1`.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: auth_header
  config.api_key['auth_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['auth_header'] = 'Bearer'
end

api_instance = OpenapiClient::CompaniesApi.new
opts = {
  company_request_body: TODO # CompanyRequestBody | 
}

begin
  # Create company
  result = api_instance.create_company(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CompaniesApi->create_company: #{e}"
end
```

#### Using the create_company_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Company>, Integer, Hash)> create_company_with_http_info(opts)

```ruby
begin
  # Create company
  data, status_code, headers = api_instance.create_company_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Company>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CompaniesApi->create_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_request_body** | [**CompanyRequestBody**](CompanyRequestBody.md) |  | [optional] |

### Return type

[**Company**](Company.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_company

> delete_company(company_id)

Delete a company

﻿The *Delete company* endpoint permanently deletes a [company](https://docs.codat.io/platform-api#/schemas/Company), its [connections](https://docs.codat.io/platform-api#/schemas/Connection) and any cached data. This operation is irreversible.  A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: auth_header
  config.api_key['auth_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['auth_header'] = 'Bearer'
end

api_instance = OpenapiClient::CompaniesApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.

begin
  # Delete a company
  api_instance.delete_company(company_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CompaniesApi->delete_company: #{e}"
end
```

#### Using the delete_company_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_company_with_http_info(company_id)

```ruby
begin
  # Delete a company
  data, status_code, headers = api_instance.delete_company_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CompaniesApi->delete_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |

### Return type

nil (empty response body)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_company

> <Company> get_company(company_id)

Get company

﻿The *Get company* endpoint returns a single company for a given `companyId`.  A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: auth_header
  config.api_key['auth_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['auth_header'] = 'Bearer'
end

api_instance = OpenapiClient::CompaniesApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.

begin
  # Get company
  result = api_instance.get_company(company_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CompaniesApi->get_company: #{e}"
end
```

#### Using the get_company_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Company>, Integer, Hash)> get_company_with_http_info(company_id)

```ruby
begin
  # Get company
  data, status_code, headers = api_instance.get_company_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Company>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CompaniesApi->get_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |

### Return type

[**Company**](Company.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_companies

> <Companies> list_companies(opts)

List companies

﻿The *List companies* endpoint returns a list of [companies] associated to your instances.  A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: auth_header
  config.api_key['auth_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['auth_header'] = 'Bearer'
end

api_instance = OpenapiClient::CompaniesApi.new
opts = {
  page: 1, # Integer | Page number. [Read more](https://docs.codat.io/using-the-api/paging).
  page_size: 100, # Integer | Number of records to return in a page. [Read more](https://docs.codat.io/using-the-api/paging).
  query: '-modifiedDate', # String | Codat query string. [Read more](https://docs.codat.io/using-the-api/querying).
  order_by: '-modifiedDate' # String | Field to order results by. [Read more](https://docs.codat.io/using-the-api/ordering-results).
}

begin
  # List companies
  result = api_instance.list_companies(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CompaniesApi->list_companies: #{e}"
end
```

#### Using the list_companies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Companies>, Integer, Hash)> list_companies_with_http_info(opts)

```ruby
begin
  # List companies
  data, status_code, headers = api_instance.list_companies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Companies>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. [Read more](https://docs.codat.io/using-the-api/paging). | [optional][default to 1] |
| **page_size** | **Integer** | Number of records to return in a page. [Read more](https://docs.codat.io/using-the-api/paging). | [optional][default to 100] |
| **query** | **String** | Codat query string. [Read more](https://docs.codat.io/using-the-api/querying). | [optional] |
| **order_by** | **String** | Field to order results by. [Read more](https://docs.codat.io/using-the-api/ordering-results). | [optional] |

### Return type

[**Companies**](Companies.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_company

> <Company> update_company(company_id, opts)

Update company

﻿Use the *Update company* endpoint to update both the name and description of the company.  If you use [groups](https://docs.codat.io/platform-api#/schemas/Group) to manage a set of companies, use the [Add company](https://docs.codat.io/platform-api#/operations/add-company-to-group) or [Remove company](https://docs.codat.io/platform-api#/operations/remove-company-from-group) endpoints to add or remove a company from a group.  A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: auth_header
  config.api_key['auth_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['auth_header'] = 'Bearer'
end

api_instance = OpenapiClient::CompaniesApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
opts = {
  company_request_body: TODO # CompanyRequestBody | 
}

begin
  # Update company
  result = api_instance.update_company(company_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CompaniesApi->update_company: #{e}"
end
```

#### Using the update_company_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Company>, Integer, Hash)> update_company_with_http_info(company_id, opts)

```ruby
begin
  # Update company
  data, status_code, headers = api_instance.update_company_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Company>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CompaniesApi->update_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **company_request_body** | [**CompanyRequestBody**](CompanyRequestBody.md) |  | [optional] |

### Return type

[**Company**](Company.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


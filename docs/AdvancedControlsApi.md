# OpenapiClient::AdvancedControlsApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_company**](AdvancedControlsApi.md#create_company) | **POST** /companies | Create company |
| [**get_configuration**](AdvancedControlsApi.md#get_configuration) | **GET** /config/companies/{companyId}/sync/commerce | Get company configuration |
| [**list_companies**](AdvancedControlsApi.md#list_companies) | **GET** /companies | List companies |
| [**set_configuration**](AdvancedControlsApi.md#set_configuration) | **POST** /config/companies/{companyId}/sync/commerce | Set configuration |


## create_company

> <Company> create_company(opts)

Create company

Creates a Codat company

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

api_instance = OpenapiClient::AdvancedControlsApi.new
opts = {
  create_company: TODO # CreateCompany | 
}

begin
  # Create company
  result = api_instance.create_company(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdvancedControlsApi->create_company: #{e}"
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
  puts "Error when calling AdvancedControlsApi->create_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_company** | [**CreateCompany**](CreateCompany.md) |  | [optional] |

### Return type

[**Company**](Company.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_configuration

> <Configuration> get_configuration(company_id)

Get company configuration

Returns a company's commerce sync configuration'.

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

api_instance = OpenapiClient::AdvancedControlsApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.

begin
  # Get company configuration
  result = api_instance.get_configuration(company_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdvancedControlsApi->get_configuration: #{e}"
end
```

#### Using the get_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Configuration>, Integer, Hash)> get_configuration_with_http_info(company_id)

```ruby
begin
  # Get company configuration
  data, status_code, headers = api_instance.get_configuration_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Configuration>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdvancedControlsApi->get_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |

### Return type

[**Configuration**](Configuration.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_companies

> <Companies> list_companies(opts)

List companies

Returns a list of companies.

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

api_instance = OpenapiClient::AdvancedControlsApi.new
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
  puts "Error when calling AdvancedControlsApi->list_companies: #{e}"
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
  puts "Error when calling AdvancedControlsApi->list_companies_with_http_info: #{e}"
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


## set_configuration

> <Configuration> set_configuration(company_id)

Set configuration

Sets a company's commerce sync configuration.

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

api_instance = OpenapiClient::AdvancedControlsApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.

begin
  # Set configuration
  result = api_instance.set_configuration(company_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdvancedControlsApi->set_configuration: #{e}"
end
```

#### Using the set_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Configuration>, Integer, Hash)> set_configuration_with_http_info(company_id)

```ruby
begin
  # Set configuration
  data, status_code, headers = api_instance.set_configuration_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Configuration>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AdvancedControlsApi->set_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |

### Return type

[**Configuration**](Configuration.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


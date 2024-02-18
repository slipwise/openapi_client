# OpenapiClient::GroupsApi

All URIs are relative to *https://api.codat.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_company_to_group**](GroupsApi.md#add_company_to_group) | **PATCH** /companies/{companyId}/groups | Add company |
| [**create_group**](GroupsApi.md#create_group) | **POST** /groups | Create group |
| [**list_groups**](GroupsApi.md#list_groups) | **GET** /groups | List groups |
| [**remove_company_from_group**](GroupsApi.md#remove_company_from_group) | **DELETE** /companies/{companyId}/groups/{groupId} | Remove company |


## add_company_to_group

> <Company> add_company_to_group(company_id, opts)

Add company

﻿Use the *Add company* endpoint to assign a company to a group. A company can belong to multiple groups, but can only be added to one group at a time.  [Groups](https://docs.codat.io/platform-api#/schemas/Group) define a set of companies that are organized based on a chosen characteristic and can be managed in the same way.

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

api_instance = OpenapiClient::GroupsApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
opts = {
  company_group_assignment: OpenapiClient::CompanyGroupAssignment.new # CompanyGroupAssignment | 
}

begin
  # Add company
  result = api_instance.add_company_to_group(company_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupsApi->add_company_to_group: #{e}"
end
```

#### Using the add_company_to_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Company>, Integer, Hash)> add_company_to_group_with_http_info(company_id, opts)

```ruby
begin
  # Add company
  data, status_code, headers = api_instance.add_company_to_group_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Company>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupsApi->add_company_to_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **company_group_assignment** | [**CompanyGroupAssignment**](CompanyGroupAssignment.md) |  | [optional] |

### Return type

[**Company**](Company.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_group

> <Group> create_group(opts)

Create group

﻿Use the *Create group* endpoint to generate a new group that you can assign your companies to.  [Groups](https://docs.codat.io/platform-api#/schemas/Group) define a set of companies that are organized based on a chosen characteristic and can be managed in the same way.  ### Tips and traps  * The maximum length for the group name is 50 characters. * It's possible to create up to 20 groups per client.

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

api_instance = OpenapiClient::GroupsApi.new
opts = {
  group_prototype: OpenapiClient::GroupPrototype.new # GroupPrototype | 
}

begin
  # Create group
  result = api_instance.create_group(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupsApi->create_group: #{e}"
end
```

#### Using the create_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> create_group_with_http_info(opts)

```ruby
begin
  # Create group
  data, status_code, headers = api_instance.create_group_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupsApi->create_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_prototype** | [**GroupPrototype**](GroupPrototype.md) |  | [optional] |

### Return type

[**Group**](Group.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_groups

> <Groups> list_groups

List groups

Use the *List group* endpoint to return a list of all groups that currently exist for your client.  [Groups](https://docs.codat.io/platform-api#/schemas/Group) define a set of companies that are organized based on a chosen characteristic and can be managed in the same way.

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

api_instance = OpenapiClient::GroupsApi.new

begin
  # List groups
  result = api_instance.list_groups
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupsApi->list_groups: #{e}"
end
```

#### Using the list_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Groups>, Integer, Hash)> list_groups_with_http_info

```ruby
begin
  # List groups
  data, status_code, headers = api_instance.list_groups_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Groups>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupsApi->list_groups_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Groups**](Groups.md)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_company_from_group

> remove_company_from_group(company_id, group_id)

Remove company

﻿Use the *Remove company* endpoint to remove a company from a group.  [Groups](https://docs.codat.io/platform-api#/schemas/Group) define a set of companies that are organized based on a chosen characteristic and can be managed in the same way.

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

api_instance = OpenapiClient::GroupsApi.new
company_id = '8a210b68-6988-11ed-a1eb-0242ac120002' # String | Unique identifier for a company.
group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique identifier for the group.

begin
  # Remove company
  api_instance.remove_company_from_group(company_id, group_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupsApi->remove_company_from_group: #{e}"
end
```

#### Using the remove_company_from_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_company_from_group_with_http_info(company_id, group_id)

```ruby
begin
  # Remove company
  data, status_code, headers = api_instance.remove_company_from_group_with_http_info(company_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling GroupsApi->remove_company_from_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | Unique identifier for a company. |  |
| **group_id** | **String** | Unique identifier for the group. |  |

### Return type

nil (empty response body)

### Authorization

[auth_header](../README.md#auth_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


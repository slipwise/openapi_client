=begin
#Platform API

#An API for the common components of all of Codat's products.  These end points cover creating and managing your companies, data connections, and integrations.  [Read about the building blocks of Codat...](https://docs.codat.io/core-concepts/companies)  [See our OpenAPI spec](https://github.com/codatio/oas) 

The version of the OpenAPI document: 3.0.0
Contact: support@codat.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.4.0-SNAPSHOT

=end

require 'cgi'

module OpenapiClient
  class GroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add company
    # ﻿Use the *Add company* endpoint to assign a company to a group. A company can belong to multiple groups, but can only be added to one group at a time.  [Groups](https://docs.codat.io/platform-api#/schemas/Group) define a set of companies that are organized based on a chosen characteristic and can be managed in the same way.
    # @param company_id [String] Unique identifier for a company.
    # @param [Hash] opts the optional parameters
    # @option opts [CompanyGroupAssignment] :company_group_assignment 
    # @return [Company]
    def add_company_to_group(company_id, opts = {})
      data, _status_code, _headers = add_company_to_group_with_http_info(company_id, opts)
      data
    end

    # Add company
    # ﻿Use the *Add company* endpoint to assign a company to a group. A company can belong to multiple groups, but can only be added to one group at a time.  [Groups](https://docs.codat.io/platform-api#/schemas/Group) define a set of companies that are organized based on a chosen characteristic and can be managed in the same way.
    # @param company_id [String] Unique identifier for a company.
    # @param [Hash] opts the optional parameters
    # @option opts [CompanyGroupAssignment] :company_group_assignment 
    # @return [Array<(Company, Integer, Hash)>] Company data, response status code and response headers
    def add_company_to_group_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupsApi.add_company_to_group ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling GroupsApi.add_company_to_group"
      end
      # resource path
      local_var_path = '/companies/{companyId}/groups'.sub('{' + 'companyId' + '}', CGI.escape(company_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'company_group_assignment'])

      # return_type
      return_type = opts[:debug_return_type] || 'Company'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"GroupsApi.add_company_to_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupsApi#add_company_to_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create group
    # ﻿Use the *Create group* endpoint to generate a new group that you can assign your companies to.  [Groups](https://docs.codat.io/platform-api#/schemas/Group) define a set of companies that are organized based on a chosen characteristic and can be managed in the same way.  ### Tips and traps  * The maximum length for the group name is 50 characters. * It's possible to create up to 20 groups per client.
    # @param [Hash] opts the optional parameters
    # @option opts [GroupPrototype] :group_prototype 
    # @return [Group]
    def create_group(opts = {})
      data, _status_code, _headers = create_group_with_http_info(opts)
      data
    end

    # Create group
    # ﻿Use the *Create group* endpoint to generate a new group that you can assign your companies to.  [Groups](https://docs.codat.io/platform-api#/schemas/Group) define a set of companies that are organized based on a chosen characteristic and can be managed in the same way.  ### Tips and traps  * The maximum length for the group name is 50 characters. * It&#39;s possible to create up to 20 groups per client.
    # @param [Hash] opts the optional parameters
    # @option opts [GroupPrototype] :group_prototype 
    # @return [Array<(Group, Integer, Hash)>] Group data, response status code and response headers
    def create_group_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupsApi.create_group ...'
      end
      # resource path
      local_var_path = '/groups'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'group_prototype'])

      # return_type
      return_type = opts[:debug_return_type] || 'Group'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"GroupsApi.create_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupsApi#create_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List groups
    # Use the *List group* endpoint to return a list of all groups that currently exist for your client.  [Groups](https://docs.codat.io/platform-api#/schemas/Group) define a set of companies that are organized based on a chosen characteristic and can be managed in the same way.
    # @param [Hash] opts the optional parameters
    # @return [Groups]
    def list_groups(opts = {})
      data, _status_code, _headers = list_groups_with_http_info(opts)
      data
    end

    # List groups
    # Use the *List group* endpoint to return a list of all groups that currently exist for your client.  [Groups](https://docs.codat.io/platform-api#/schemas/Group) define a set of companies that are organized based on a chosen characteristic and can be managed in the same way.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Groups, Integer, Hash)>] Groups data, response status code and response headers
    def list_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupsApi.list_groups ...'
      end
      # resource path
      local_var_path = '/groups'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Groups'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"GroupsApi.list_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupsApi#list_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove company
    # ﻿Use the *Remove company* endpoint to remove a company from a group.  [Groups](https://docs.codat.io/platform-api#/schemas/Group) define a set of companies that are organized based on a chosen characteristic and can be managed in the same way.
    # @param company_id [String] Unique identifier for a company.
    # @param group_id [String] Unique identifier for the group.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_company_from_group(company_id, group_id, opts = {})
      remove_company_from_group_with_http_info(company_id, group_id, opts)
      nil
    end

    # Remove company
    # ﻿Use the *Remove company* endpoint to remove a company from a group.  [Groups](https://docs.codat.io/platform-api#/schemas/Group) define a set of companies that are organized based on a chosen characteristic and can be managed in the same way.
    # @param company_id [String] Unique identifier for a company.
    # @param group_id [String] Unique identifier for the group.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def remove_company_from_group_with_http_info(company_id, group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupsApi.remove_company_from_group ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling GroupsApi.remove_company_from_group"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupsApi.remove_company_from_group"
      end
      # resource path
      local_var_path = '/companies/{companyId}/groups/{groupId}'.sub('{' + 'companyId' + '}', CGI.escape(company_id.to_s)).sub('{' + 'groupId' + '}', CGI.escape(group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"GroupsApi.remove_company_from_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupsApi#remove_company_from_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
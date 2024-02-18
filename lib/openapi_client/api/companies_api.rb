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
  class CompaniesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create company
    # ﻿Use the *Create company* endpoint to create a new [company](https://docs.codat.io/platform-api#/schemas/Company) that represents your customer in Codat.   A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data.  If forbidden characters (see `name` pattern) are present in the request, a company will be created with the forbidden characters removed. For example, `Company (Codat[1])` with be created as `Company Codat1`.
    # @param [Hash] opts the optional parameters
    # @option opts [CompanyRequestBody] :company_request_body 
    # @return [Company]
    def create_company(opts = {})
      data, _status_code, _headers = create_company_with_http_info(opts)
      data
    end

    # Create company
    # ﻿Use the *Create company* endpoint to create a new [company](https://docs.codat.io/platform-api#/schemas/Company) that represents your customer in Codat.   A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data.  If forbidden characters (see &#x60;name&#x60; pattern) are present in the request, a company will be created with the forbidden characters removed. For example, &#x60;Company (Codat[1])&#x60; with be created as &#x60;Company Codat1&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [CompanyRequestBody] :company_request_body 
    # @return [Array<(Company, Integer, Hash)>] Company data, response status code and response headers
    def create_company_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompaniesApi.create_company ...'
      end
      # resource path
      local_var_path = '/companies'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'company_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Company'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"CompaniesApi.create_company",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#create_company\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a company
    # ﻿The *Delete company* endpoint permanently deletes a [company](https://docs.codat.io/platform-api#/schemas/Company), its [connections](https://docs.codat.io/platform-api#/schemas/Connection) and any cached data. This operation is irreversible.  A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data. 
    # @param company_id [String] Unique identifier for a company.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_company(company_id, opts = {})
      delete_company_with_http_info(company_id, opts)
      nil
    end

    # Delete a company
    # ﻿The *Delete company* endpoint permanently deletes a [company](https://docs.codat.io/platform-api#/schemas/Company), its [connections](https://docs.codat.io/platform-api#/schemas/Connection) and any cached data. This operation is irreversible.  A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data. 
    # @param company_id [String] Unique identifier for a company.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_company_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompaniesApi.delete_company ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling CompaniesApi.delete_company"
      end
      # resource path
      local_var_path = '/companies/{companyId}'.sub('{' + 'companyId' + '}', CGI.escape(company_id.to_s))

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
        :operation => :"CompaniesApi.delete_company",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#delete_company\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get company
    # ﻿The *Get company* endpoint returns a single company for a given `companyId`.  A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data. 
    # @param company_id [String] Unique identifier for a company.
    # @param [Hash] opts the optional parameters
    # @return [Company]
    def get_company(company_id, opts = {})
      data, _status_code, _headers = get_company_with_http_info(company_id, opts)
      data
    end

    # Get company
    # ﻿The *Get company* endpoint returns a single company for a given &#x60;companyId&#x60;.  A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data. 
    # @param company_id [String] Unique identifier for a company.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Company, Integer, Hash)>] Company data, response status code and response headers
    def get_company_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompaniesApi.get_company ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling CompaniesApi.get_company"
      end
      # resource path
      local_var_path = '/companies/{companyId}'.sub('{' + 'companyId' + '}', CGI.escape(company_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Company'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"CompaniesApi.get_company",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#get_company\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List companies
    # ﻿The *List companies* endpoint returns a list of [companies] associated to your instances.  A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. [Read more](https://docs.codat.io/using-the-api/paging). (default to 1)
    # @option opts [Integer] :page_size Number of records to return in a page. [Read more](https://docs.codat.io/using-the-api/paging). (default to 100)
    # @option opts [String] :query Codat query string. [Read more](https://docs.codat.io/using-the-api/querying).
    # @option opts [String] :order_by Field to order results by. [Read more](https://docs.codat.io/using-the-api/ordering-results).
    # @return [Companies]
    def list_companies(opts = {})
      data, _status_code, _headers = list_companies_with_http_info(opts)
      data
    end

    # List companies
    # ﻿The *List companies* endpoint returns a list of [companies] associated to your instances.  A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. [Read more](https://docs.codat.io/using-the-api/paging). (default to 1)
    # @option opts [Integer] :page_size Number of records to return in a page. [Read more](https://docs.codat.io/using-the-api/paging). (default to 100)
    # @option opts [String] :query Codat query string. [Read more](https://docs.codat.io/using-the-api/querying).
    # @option opts [String] :order_by Field to order results by. [Read more](https://docs.codat.io/using-the-api/ordering-results).
    # @return [Array<(Companies, Integer, Hash)>] Companies data, response status code and response headers
    def list_companies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompaniesApi.list_companies ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling CompaniesApi.list_companies, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling CompaniesApi.list_companies, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling CompaniesApi.list_companies, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/companies'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Companies'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"CompaniesApi.list_companies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#list_companies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update company
    # ﻿Use the *Update company* endpoint to update both the name and description of the company.  If you use [groups](https://docs.codat.io/platform-api#/schemas/Group) to manage a set of companies, use the [Add company](https://docs.codat.io/platform-api#/operations/add-company-to-group) or [Remove company](https://docs.codat.io/platform-api#/operations/remove-company-from-group) endpoints to add or remove a company from a group.  A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data.
    # @param company_id [String] Unique identifier for a company.
    # @param [Hash] opts the optional parameters
    # @option opts [CompanyRequestBody] :company_request_body 
    # @return [Company]
    def update_company(company_id, opts = {})
      data, _status_code, _headers = update_company_with_http_info(company_id, opts)
      data
    end

    # Update company
    # ﻿Use the *Update company* endpoint to update both the name and description of the company.  If you use [groups](https://docs.codat.io/platform-api#/schemas/Group) to manage a set of companies, use the [Add company](https://docs.codat.io/platform-api#/operations/add-company-to-group) or [Remove company](https://docs.codat.io/platform-api#/operations/remove-company-from-group) endpoints to add or remove a company from a group.  A [company](https://docs.codat.io/platform-api#/schemas/Company) represents a business sharing access to their data. Each company can have multiple [connections](https://docs.codat.io/platform-api#/schemas/Connection) to different data sources, such as one connection to Xero for accounting data, two connections to Plaid for two bank accounts, and a connection to Zettle for POS data.
    # @param company_id [String] Unique identifier for a company.
    # @param [Hash] opts the optional parameters
    # @option opts [CompanyRequestBody] :company_request_body 
    # @return [Array<(Company, Integer, Hash)>] Company data, response status code and response headers
    def update_company_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompaniesApi.update_company ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling CompaniesApi.update_company"
      end
      # resource path
      local_var_path = '/companies/{companyId}'.sub('{' + 'companyId' + '}', CGI.escape(company_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'company_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Company'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"CompaniesApi.update_company",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#update_company\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
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
  class SupplementalDataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Configure
    # The *Configure* endpoint allows you to maintain or change configuration required to return supplemental data for each integration and data type combination.  [Supplemental data](https://docs.codat.io/using-the-api/additional-data) is additional data you can include in Codat's standard data types.  **Integration-specific behaviour** See the *examples* for integration-specific frequently requested properties.
    # @param platform_key [String] A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys.
    # @param data_type [String] Supported supplemental data data type.
    # @param [Hash] opts the optional parameters
    # @option opts [SupplementalDataConfiguration] :supplemental_data_configuration The configuration for the specified platform and data type.
    # @return [nil]
    def configure_supplemental_data(platform_key, data_type, opts = {})
      configure_supplemental_data_with_http_info(platform_key, data_type, opts)
      nil
    end

    # Configure
    # The *Configure* endpoint allows you to maintain or change configuration required to return supplemental data for each integration and data type combination.  [Supplemental data](https://docs.codat.io/using-the-api/additional-data) is additional data you can include in Codat&#39;s standard data types.  **Integration-specific behaviour** See the *examples* for integration-specific frequently requested properties.
    # @param platform_key [String] A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys.
    # @param data_type [String] Supported supplemental data data type.
    # @param [Hash] opts the optional parameters
    # @option opts [SupplementalDataConfiguration] :supplemental_data_configuration The configuration for the specified platform and data type.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def configure_supplemental_data_with_http_info(platform_key, data_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SupplementalDataApi.configure_supplemental_data ...'
      end
      # verify the required parameter 'platform_key' is set
      if @api_client.config.client_side_validation && platform_key.nil?
        fail ArgumentError, "Missing the required parameter 'platform_key' when calling SupplementalDataApi.configure_supplemental_data"
      end
      if @api_client.config.client_side_validation && platform_key.to_s.length > 4
        fail ArgumentError, 'invalid value for "platform_key" when calling SupplementalDataApi.configure_supplemental_data, the character length must be smaller than or equal to 4.'
      end

      if @api_client.config.client_side_validation && platform_key.to_s.length < 4
        fail ArgumentError, 'invalid value for "platform_key" when calling SupplementalDataApi.configure_supplemental_data, the character length must be great than or equal to 4.'
      end

      pattern = Regexp.new(/[a-z]{4}/)
      if @api_client.config.client_side_validation && platform_key !~ pattern
        fail ArgumentError, "invalid value for 'platform_key' when calling SupplementalDataApi.configure_supplemental_data, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'data_type' is set
      if @api_client.config.client_side_validation && data_type.nil?
        fail ArgumentError, "Missing the required parameter 'data_type' when calling SupplementalDataApi.configure_supplemental_data"
      end
      # verify enum value
      allowable_values = ["chartOfAccounts", "bills", "company", "creditNotes", "customers", "invoices", "items", "journalEntries", "suppliers", "taxRates", "commerce-companyInfo", "commerce-customers", "commerce-disputes", "commerce-locations", "commerce-orders", "commerce-payments", "commerce-paymentMethods", "commerce-products", "commerce-productCategories", "commerce-taxComponents", "commerce-transactions"]
      if @api_client.config.client_side_validation && !allowable_values.include?(data_type)
        fail ArgumentError, "invalid value for \"data_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/integrations/{platformKey}/dataTypes/{dataType}/supplementalDataConfig'.sub('{' + 'platformKey' + '}', CGI.escape(platform_key.to_s)).sub('{' + 'dataType' + '}', CGI.escape(data_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'supplemental_data_configuration'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"SupplementalDataApi.configure_supplemental_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SupplementalDataApi#configure_supplemental_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get configuration
    # The *Get configuration* endpoint returns supplemental data configuration previously created for each integration and data type combination.  [Supplemental data](https://docs.codat.io/using-the-api/additional-data) is additional data you can include in Codat's standard data types.
    # @param platform_key [String] A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys.
    # @param data_type [String] Supported supplemental data data type.
    # @param [Hash] opts the optional parameters
    # @return [SupplementalDataConfiguration]
    def get_supplemental_data_configuration(platform_key, data_type, opts = {})
      data, _status_code, _headers = get_supplemental_data_configuration_with_http_info(platform_key, data_type, opts)
      data
    end

    # Get configuration
    # The *Get configuration* endpoint returns supplemental data configuration previously created for each integration and data type combination.  [Supplemental data](https://docs.codat.io/using-the-api/additional-data) is additional data you can include in Codat&#39;s standard data types.
    # @param platform_key [String] A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys.
    # @param data_type [String] Supported supplemental data data type.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SupplementalDataConfiguration, Integer, Hash)>] SupplementalDataConfiguration data, response status code and response headers
    def get_supplemental_data_configuration_with_http_info(platform_key, data_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SupplementalDataApi.get_supplemental_data_configuration ...'
      end
      # verify the required parameter 'platform_key' is set
      if @api_client.config.client_side_validation && platform_key.nil?
        fail ArgumentError, "Missing the required parameter 'platform_key' when calling SupplementalDataApi.get_supplemental_data_configuration"
      end
      if @api_client.config.client_side_validation && platform_key.to_s.length > 4
        fail ArgumentError, 'invalid value for "platform_key" when calling SupplementalDataApi.get_supplemental_data_configuration, the character length must be smaller than or equal to 4.'
      end

      if @api_client.config.client_side_validation && platform_key.to_s.length < 4
        fail ArgumentError, 'invalid value for "platform_key" when calling SupplementalDataApi.get_supplemental_data_configuration, the character length must be great than or equal to 4.'
      end

      pattern = Regexp.new(/[a-z]{4}/)
      if @api_client.config.client_side_validation && platform_key !~ pattern
        fail ArgumentError, "invalid value for 'platform_key' when calling SupplementalDataApi.get_supplemental_data_configuration, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'data_type' is set
      if @api_client.config.client_side_validation && data_type.nil?
        fail ArgumentError, "Missing the required parameter 'data_type' when calling SupplementalDataApi.get_supplemental_data_configuration"
      end
      # verify enum value
      allowable_values = ["chartOfAccounts", "bills", "company", "creditNotes", "customers", "invoices", "items", "journalEntries", "suppliers", "taxRates", "commerce-companyInfo", "commerce-customers", "commerce-disputes", "commerce-locations", "commerce-orders", "commerce-payments", "commerce-paymentMethods", "commerce-products", "commerce-productCategories", "commerce-taxComponents", "commerce-transactions"]
      if @api_client.config.client_side_validation && !allowable_values.include?(data_type)
        fail ArgumentError, "invalid value for \"data_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/integrations/{platformKey}/dataTypes/{dataType}/supplementalDataConfig'.sub('{' + 'platformKey' + '}', CGI.escape(platform_key.to_s)).sub('{' + 'dataType' + '}', CGI.escape(data_type.to_s))

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
      return_type = opts[:debug_return_type] || 'SupplementalDataConfiguration'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"SupplementalDataApi.get_supplemental_data_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SupplementalDataApi#get_supplemental_data_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

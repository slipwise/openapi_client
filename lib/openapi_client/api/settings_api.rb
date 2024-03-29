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
  class SettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create API key
    # Use the *Create API keys* endpoint to generate a new API key for your client.  [API keys](https://docs.codat.io/platform-api#/schemas/apiKeys) are tokens used to control access to the API. Include this token in the `Authorization` header parameter when making API calls, following the word \"Basic\" and a space with your API key.  You can [read more](https://docs.codat.io/using-the-api/authentication) about authentication at Codat and managing API keys via the Portal UI or API.  ### Tips and pitfalls  * Your first API key is created for you. Access this key via [Codat's Portal](https://app.codat.io/developers/api-keys). * If you require multiple API keys, perform multiple calls to the *Create API keys* endpoint.  * The number of API keys is limited to 10. If you have reached the maximum amount of keys, use the *Delete API key* endpoint to delete an unused key first.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateApiKey] :create_api_key 
    # @return [ApiKeyDetails]
    def create_api_key(opts = {})
      data, _status_code, _headers = create_api_key_with_http_info(opts)
      data
    end

    # Create API key
    # Use the *Create API keys* endpoint to generate a new API key for your client.  [API keys](https://docs.codat.io/platform-api#/schemas/apiKeys) are tokens used to control access to the API. Include this token in the &#x60;Authorization&#x60; header parameter when making API calls, following the word \&quot;Basic\&quot; and a space with your API key.  You can [read more](https://docs.codat.io/using-the-api/authentication) about authentication at Codat and managing API keys via the Portal UI or API.  ### Tips and pitfalls  * Your first API key is created for you. Access this key via [Codat&#39;s Portal](https://app.codat.io/developers/api-keys). * If you require multiple API keys, perform multiple calls to the *Create API keys* endpoint.  * The number of API keys is limited to 10. If you have reached the maximum amount of keys, use the *Delete API key* endpoint to delete an unused key first.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateApiKey] :create_api_key 
    # @return [Array<(ApiKeyDetails, Integer, Hash)>] ApiKeyDetails data, response status code and response headers
    def create_api_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.create_api_key ...'
      end
      # resource path
      local_var_path = '/apiKeys'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_api_key'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiKeyDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"SettingsApi.create_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#create_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete API key
    # Use the *Delete API keys* endpoint to delete an existing API key, providing its valid `id` as a parameter. Note that this operation is not reversible.  [API keys](https://docs.codat.io/platform-api#/schemas/apiKeys) are tokens used to control access to the API. Include this token in the `Authorization` header parameter when making API calls, following the word \"Basic\" and a space with your API key.  You can [read more](https://docs.codat.io/using-the-api/authentication) about authentication at Codat and managing API keys via the Portal UI or API.  ### Tips and pitfalls  * It is possible to delete the last remaining API key. If this happens, a new key can be created via the [API key management page](https://app.codat.io/developers/api-keys) of the Portal. * It is possible to delete the API key used to authenticate the *Delete API key* request.
    # @param api_key_id [String] Unique identifier for api key.
    # @param [Hash] opts the optional parameters
    # @return [ErrorMessage]
    def delete_api_key(api_key_id, opts = {})
      data, _status_code, _headers = delete_api_key_with_http_info(api_key_id, opts)
      data
    end

    # Delete API key
    # Use the *Delete API keys* endpoint to delete an existing API key, providing its valid &#x60;id&#x60; as a parameter. Note that this operation is not reversible.  [API keys](https://docs.codat.io/platform-api#/schemas/apiKeys) are tokens used to control access to the API. Include this token in the &#x60;Authorization&#x60; header parameter when making API calls, following the word \&quot;Basic\&quot; and a space with your API key.  You can [read more](https://docs.codat.io/using-the-api/authentication) about authentication at Codat and managing API keys via the Portal UI or API.  ### Tips and pitfalls  * It is possible to delete the last remaining API key. If this happens, a new key can be created via the [API key management page](https://app.codat.io/developers/api-keys) of the Portal. * It is possible to delete the API key used to authenticate the *Delete API key* request.
    # @param api_key_id [String] Unique identifier for api key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ErrorMessage, Integer, Hash)>] ErrorMessage data, response status code and response headers
    def delete_api_key_with_http_info(api_key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.delete_api_key ...'
      end
      # verify the required parameter 'api_key_id' is set
      if @api_client.config.client_side_validation && api_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'api_key_id' when calling SettingsApi.delete_api_key"
      end
      # resource path
      local_var_path = '/apiKeys/{apiKeyId}'.sub('{' + 'apiKeyId' + '}', CGI.escape(api_key_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ErrorMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"SettingsApi.delete_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#delete_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get profile
    # Fetch your Codat profile.
    # @param [Hash] opts the optional parameters
    # @return [Profile]
    def get_profile(opts = {})
      data, _status_code, _headers = get_profile_with_http_info(opts)
      data
    end

    # Get profile
    # Fetch your Codat profile.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Profile, Integer, Hash)>] Profile data, response status code and response headers
    def get_profile_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.get_profile ...'
      end
      # resource path
      local_var_path = '/profile'

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
      return_type = opts[:debug_return_type] || 'Profile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"SettingsApi.get_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#get_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get sync settings
    # Retrieve the [sync settings](https://docs.codat.io/knowledge-base/advanced-sync-settings) for your client. This includes how often data types should be queued to be updated, and how much history should be fetched.
    # @param [Hash] opts the optional parameters
    # @return [SyncSettings]
    def get_profile_sync_settings(opts = {})
      data, _status_code, _headers = get_profile_sync_settings_with_http_info(opts)
      data
    end

    # Get sync settings
    # Retrieve the [sync settings](https://docs.codat.io/knowledge-base/advanced-sync-settings) for your client. This includes how often data types should be queued to be updated, and how much history should be fetched.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SyncSettings, Integer, Hash)>] SyncSettings data, response status code and response headers
    def get_profile_sync_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.get_profile_sync_settings ...'
      end
      # resource path
      local_var_path = '/profile/syncSettings'

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
      return_type = opts[:debug_return_type] || 'SyncSettings'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"SettingsApi.get_profile_sync_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#get_profile_sync_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List API keys
    # Use the *List API keys* endpoint to return a list of all API keys that currently exist for your client. This includes keys created via the Portal UI or the *Create API keys* endpoint.  [API keys](https://docs.codat.io/platform-api#/schemas/apiKeys) are tokens used to control access to the API. Include this token in the `Authorization` header parameter when making API calls, following the word \"Basic\" and a space with your API key.  You can [read more](https://docs.codat.io/using-the-api/authentication) about authentication at Codat and managing API keys via the Portal UI or API.
    # @param [Hash] opts the optional parameters
    # @return [ApiKeys]
    def list_api_keys(opts = {})
      data, _status_code, _headers = list_api_keys_with_http_info(opts)
      data
    end

    # List API keys
    # Use the *List API keys* endpoint to return a list of all API keys that currently exist for your client. This includes keys created via the Portal UI or the *Create API keys* endpoint.  [API keys](https://docs.codat.io/platform-api#/schemas/apiKeys) are tokens used to control access to the API. Include this token in the &#x60;Authorization&#x60; header parameter when making API calls, following the word \&quot;Basic\&quot; and a space with your API key.  You can [read more](https://docs.codat.io/using-the-api/authentication) about authentication at Codat and managing API keys via the Portal UI or API.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiKeys, Integer, Hash)>] ApiKeys data, response status code and response headers
    def list_api_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.list_api_keys ...'
      end
      # resource path
      local_var_path = '/apiKeys'

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
      return_type = opts[:debug_return_type] || 'ApiKeys'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"SettingsApi.list_api_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#list_api_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update profile
    # Update your Codat profile
    # @param [Hash] opts the optional parameters
    # @option opts [Profile] :profile All fields should be included when updating your profile.
    # @return [Profile]
    def update_profile(opts = {})
      data, _status_code, _headers = update_profile_with_http_info(opts)
      data
    end

    # Update profile
    # Update your Codat profile
    # @param [Hash] opts the optional parameters
    # @option opts [Profile] :profile All fields should be included when updating your profile.
    # @return [Array<(Profile, Integer, Hash)>] Profile data, response status code and response headers
    def update_profile_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.update_profile ...'
      end
      # resource path
      local_var_path = '/profile'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'profile'])

      # return_type
      return_type = opts[:debug_return_type] || 'Profile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"SettingsApi.update_profile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#update_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update all sync settings
    # Update sync settings for all data types.
    # @param [Hash] opts the optional parameters
    # @option opts [] :UNKNOWN_PARAM_NAME Include a &#x60;syncSetting&#x60; object for each data type. &#x60;syncFromWindow&#x60;, &#x60;syncFromUTC&#x60; &amp; &#x60;monthsToSync&#x60; only need to be included if you wish to set a value for them.
    # @return [nil]
    def update_profile_sync_settings(opts = {})
      update_profile_sync_settings_with_http_info(opts)
      nil
    end

    # Update all sync settings
    # Update sync settings for all data types.
    # @param [Hash] opts the optional parameters
    # @option opts [] :UNKNOWN_PARAM_NAME Include a &#x60;syncSetting&#x60; object for each data type. &#x60;syncFromWindow&#x60;, &#x60;syncFromUTC&#x60; &amp; &#x60;monthsToSync&#x60; only need to be included if you wish to set a value for them.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_profile_sync_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.update_profile_sync_settings ...'
      end
      # resource path
      local_var_path = '/profile/syncSettings'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'UNKNOWN_PARAM_NAME'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['auth_header']

      new_options = opts.merge(
        :operation => :"SettingsApi.update_profile_sync_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#update_profile_sync_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

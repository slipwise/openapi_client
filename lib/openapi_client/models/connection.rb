=begin
#Sync for Commerce

#The API for Sync for Commerce.   Sync for Commerce automatically replicates and reconciles sales data from a merchant’s source PoS, Payments, and eCommerce systems into their accounting software. This eliminates manual processing by merchants and transforms their ability to run and grow their business.    [Read More...](https://docs.codat.io/commerce/overview)  Not seeing the endpoints you're expecting? We've [reorganized our products](https://docs.codat.io/updates/230901-new-products), and you may be using a [different version of Sync for Commerce](https://docs.codat.io/sync-for-commerce-v1-api#/).

The version of the OpenAPI document: 1.1
Contact: syncforcommerce@codat.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.4.0-SNAPSHOT

=end

require 'date'
require 'time'

module OpenapiClient
  # ﻿A connection represents a [company's](https://docs.codat.io/sync-for-sync-for-commerce-api#/schemas/Company) connection to a data source and allows you to synchronize data (pull and/or push) with that source.  A company can have multiple data connections depending on the type of data source it is connecting to. For example, a single company can link to:  - [Accounting data](https://docs.codat.io/accounting-api/overview) - 1 active connection. - [Banking data](https://docs.codat.io/banking-api/overview) - Multiple active connections. - [Commerce data](https://docs.codat.io/commerce-api/overview) - Multiple active connections. Any combination of accounting, banking, and commerce data connections is allowed.  Before you can use a data connection to pull or push data, the company must grant you access to their business data by [linking the connection](https://docs.codat.io/auth-flow/overview).
  class Connection
    # A unique 4-letter key to represent a platform in each integration. View [accounting](https://docs.codat.io/integrations/accounting/overview#platform-keys), [banking](https://docs.codat.io/integrations/banking/overview#platform-keys), and [commerce](https://docs.codat.io/integrations/commerce/overview#platform-keys) platform keys.
    attr_accessor :id

    # A Codat ID representing the integration.
    attr_accessor :integration_id

    # A unique four-character ID that identifies the platform of the company's data connection. This ensures continuity if the platform changes its name in the future.
    attr_accessor :integration_key

    # A source-specific ID used to distinguish between different sources originating from the same data connection. In general, a data connection is a single data source. However, for TrueLayer, `sourceId` is associated with a specific bank and has a many-to-one relationship with the `integrationId`.
    attr_accessor :source_id

    attr_accessor :source_type

    # Name of integration connected to company.
    attr_accessor :platform_name

    # The link URL your customers can use to authorize access to their business application.
    attr_accessor :link_url

    attr_accessor :status

    # In Codat's data model, dates and times are represented using the <a class=\"external\" href=\"https://en.wikipedia.org/wiki/ISO_8601\" target=\"_blank\">ISO 8601 standard</a>. Date and time fields are formatted as strings; for example:  ``` 2020-10-08T22:40:50Z 2021-01-01T00:00:00 ```    When syncing data that contains `DateTime` fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): `2021-11-15T06:00:00Z` - Unqualified local time: `2021-11-15T01:00:00` - UTC time offsets: `2021-11-15T01:00:00-05:00`  > Time zones >  > Not all dates from Codat will contain information about time zones.   > Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced.
    attr_accessor :last_sync

    # In Codat's data model, dates and times are represented using the <a class=\"external\" href=\"https://en.wikipedia.org/wiki/ISO_8601\" target=\"_blank\">ISO 8601 standard</a>. Date and time fields are formatted as strings; for example:  ``` 2020-10-08T22:40:50Z 2021-01-01T00:00:00 ```    When syncing data that contains `DateTime` fields from Codat, make sure you support the following cases when reading time information:  - Coordinated Universal Time (UTC): `2021-11-15T06:00:00Z` - Unqualified local time: `2021-11-15T01:00:00` - UTC time offsets: `2021-11-15T01:00:00-05:00`  > Time zones >  > Not all dates from Codat will contain information about time zones.   > Where it is not available from the underlying platform, Codat will return these as times local to the business whose data has been synced.
    attr_accessor :created

    attr_accessor :data_connection_errors

    attr_accessor :connection_info

    attr_accessor :additional_properties

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'integration_id' => :'integrationId',
        :'integration_key' => :'integrationKey',
        :'source_id' => :'sourceId',
        :'source_type' => :'sourceType',
        :'platform_name' => :'platformName',
        :'link_url' => :'linkUrl',
        :'status' => :'status',
        :'last_sync' => :'lastSync',
        :'created' => :'created',
        :'data_connection_errors' => :'dataConnectionErrors',
        :'connection_info' => :'connectionInfo',
        :'additional_properties' => :'additionalProperties'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'integration_id' => :'String',
        :'integration_key' => :'String',
        :'source_id' => :'String',
        :'source_type' => :'SourceType',
        :'platform_name' => :'String',
        :'link_url' => :'String',
        :'status' => :'DataConnectionStatus',
        :'last_sync' => :'String',
        :'created' => :'String',
        :'data_connection_errors' => :'Array<DataConnectionError>',
        :'connection_info' => :'Hash<String, String>',
        :'additional_properties' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'additional_properties'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Connection` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Connection`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'integration_id')
        self.integration_id = attributes[:'integration_id']
      else
        self.integration_id = nil
      end

      if attributes.key?(:'integration_key')
        self.integration_key = attributes[:'integration_key']
      else
        self.integration_key = nil
      end

      if attributes.key?(:'source_id')
        self.source_id = attributes[:'source_id']
      else
        self.source_id = nil
      end

      if attributes.key?(:'source_type')
        self.source_type = attributes[:'source_type']
      else
        self.source_type = nil
      end

      if attributes.key?(:'platform_name')
        self.platform_name = attributes[:'platform_name']
      else
        self.platform_name = nil
      end

      if attributes.key?(:'link_url')
        self.link_url = attributes[:'link_url']
      else
        self.link_url = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'last_sync')
        self.last_sync = attributes[:'last_sync']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      else
        self.created = nil
      end

      if attributes.key?(:'data_connection_errors')
        if (value = attributes[:'data_connection_errors']).is_a?(Array)
          self.data_connection_errors = value
        end
      end

      if attributes.key?(:'connection_info')
      end

      if attributes.key?(:'additional_properties')
        self.additional_properties = attributes[:'additional_properties']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length > 4
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 4.')
      end

      if @id.to_s.length < 4
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 4.')
      end

      pattern = Regexp.new(/[a-z]{4}/)
      if @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      if @integration_id.nil?
        invalid_properties.push('invalid value for "integration_id", integration_id cannot be nil.')
      end

      if @integration_key.nil?
        invalid_properties.push('invalid value for "integration_key", integration_key cannot be nil.')
      end

      if @source_id.nil?
        invalid_properties.push('invalid value for "source_id", source_id cannot be nil.')
      end

      if @source_type.nil?
        invalid_properties.push('invalid value for "source_type", source_type cannot be nil.')
      end

      if @platform_name.nil?
        invalid_properties.push('invalid value for "platform_name", platform_name cannot be nil.')
      end

      if @link_url.nil?
        invalid_properties.push('invalid value for "link_url", link_url cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @created.nil?
        invalid_properties.push('invalid value for "created", created cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @id.to_s.length > 4
      return false if @id.to_s.length < 4
      return false if @id !~ Regexp.new(/[a-z]{4}/)
      return false if @integration_id.nil?
      return false if @integration_key.nil?
      return false if @source_id.nil?
      return false if @source_type.nil?
      return false if @platform_name.nil?
      return false if @link_url.nil?
      return false if @status.nil?
      return false if @created.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 4
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 4.'
      end

      if id.to_s.length < 4
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 4.'
      end

      pattern = Regexp.new(/[a-z]{4}/)
      if id !~ pattern
        fail ArgumentError, "invalid value for \"id\", must conform to the pattern #{pattern}."
      end

      @id = id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          integration_id == o.integration_id &&
          integration_key == o.integration_key &&
          source_id == o.source_id &&
          source_type == o.source_type &&
          platform_name == o.platform_name &&
          link_url == o.link_url &&
          status == o.status &&
          last_sync == o.last_sync &&
          created == o.created &&
          data_connection_errors == o.data_connection_errors &&
          connection_info == o.connection_info &&
          additional_properties == o.additional_properties
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, integration_id, integration_key, source_id, source_type, platform_name, link_url, status, last_sync, created, data_connection_errors, connection_info, additional_properties].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end

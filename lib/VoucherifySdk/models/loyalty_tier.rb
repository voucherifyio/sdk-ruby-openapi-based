=begin
#Voucherify API

#Voucherify promotion engine REST API. Please see https://docs.voucherify.io/docs for more details.

The version of the OpenAPI document: v2018-08-01
Contact: support@voucherify.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'date'
require 'time'

module VoucherifySdk
  class LoyaltyTier
    # Loyalty Tier name.
    attr_accessor :name

    # Contains a list of earning rule IDs and their points mapping for the given earning rule.
    attr_accessor :earning_rules

    # Contains a list of reward IDs and their points mapping for the given reward.
    attr_accessor :rewards

    attr_accessor :points

    # Unique loyalty tier ID.
    attr_accessor :id

    # Unique parent campaign ID.
    attr_accessor :campaign_id

    # The metadata object stores all custom attributes assigned to the loyalty tier. A set of key/value pairs that you can attach to a loyalty tier object. It can be useful for storing additional information about the loyalty tier in a structured format.
    attr_accessor :metadata

    # Timestamp representing the date and time when the loyalty tier was created in ISO 8601 format.
    attr_accessor :created_at

    # Timestamp representing the date and time when the loyalty tier was updated in ISO 8601 format.
    attr_accessor :updated_at

    attr_accessor :config

    attr_accessor :expiration

    # The type of object represented by JSON. This object stores information about the loyalty.
    attr_accessor :object

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
        :'name' => :'name',
        :'earning_rules' => :'earning_rules',
        :'rewards' => :'rewards',
        :'points' => :'points',
        :'id' => :'id',
        :'campaign_id' => :'campaign_id',
        :'metadata' => :'metadata',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'config' => :'config',
        :'expiration' => :'expiration',
        :'object' => :'object'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'earning_rules' => :'Hash<String, MappingPoints>',
        :'rewards' => :'Hash<String, MappingPoints>',
        :'points' => :'LoyaltyTierBasePoints',
        :'id' => :'String',
        :'campaign_id' => :'String',
        :'metadata' => :'Object',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'config' => :'LoyaltyTierAllOfConfig',
        :'expiration' => :'LoyaltyTierExpiration',
        :'object' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'metadata',
        :'updated_at',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'LoyaltyTierBase'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VoucherifySdk::LoyaltyTier` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VoucherifySdk::LoyaltyTier`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'earning_rules')
        if (value = attributes[:'earning_rules']).is_a?(Hash)
          self.earning_rules = value
        end
      end

      if attributes.key?(:'rewards')
        if (value = attributes[:'rewards']).is_a?(Hash)
          self.rewards = value
        end
      end

      if attributes.key?(:'points')
        self.points = attributes[:'points']
      else
        self.points = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      else
        self.campaign_id = nil
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      else
        self.metadata = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'config')
        self.config = attributes[:'config']
      else
        self.config = nil
      end

      if attributes.key?(:'expiration')
        self.expiration = attributes[:'expiration']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = 'loyalty_tier'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @points.nil?
        invalid_properties.push('invalid value for "points", points cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @campaign_id.nil?
        invalid_properties.push('invalid value for "campaign_id", campaign_id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @config.nil?
        invalid_properties.push('invalid value for "config", config cannot be nil.')
      end

      if @object.nil?
        invalid_properties.push('invalid value for "object", object cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @name.nil?
      return false if @points.nil?
      return false if @id.nil?
      return false if @campaign_id.nil?
      return false if @created_at.nil?
      return false if @config.nil?
      return false if @object.nil?
      object_validator = EnumAttributeValidator.new('String', ["loyalty_tier"])
      return false unless object_validator.valid?(@object)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["loyalty_tier"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          earning_rules == o.earning_rules &&
          rewards == o.rewards &&
          points == o.points &&
          id == o.id &&
          campaign_id == o.campaign_id &&
          metadata == o.metadata &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          config == o.config &&
          expiration == o.expiration &&
          object == o.object
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, earning_rules, rewards, points, id, campaign_id, metadata, created_at, updated_at, config, expiration, object].hash
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
        klass = VoucherifySdk.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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

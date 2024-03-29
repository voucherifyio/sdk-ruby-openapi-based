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
  # Model Used for internal communication
  class RedemptionInternal
    # Unique redemption ID.
    attr_accessor :id

    # The type of object represented by the JSON. This object stores information about the `redemption`.
    attr_accessor :object

    # Timestamp representing the date and time when the redemption was created in ISO 8601 format.
    attr_accessor :created_at

    # Hashed customer source ID.
    attr_accessor :tracking_id

    # The metadata object stores all custom attributes assigned to the redemption.
    attr_accessor :metadata

    # The source of the channel for the redemption rollback. A `USER` corresponds to the Voucherify Dashboard and an `API` corresponds to the API.
    attr_accessor :channel_type

    # Unique channel ID of the user performing the redemption. This is either a user ID from a user using the Voucherify Dashboard or an X-APP-Id of a user using the API.
    attr_accessor :channel_id

    # If the result is `FAILURE`, this parameter will provide a generic reason as to why the redemption failed.
    attr_accessor :failure_code

    # If the result is `FAILURE`, this parameter will provide a more expanded reason as to why the redemption failed.
    attr_accessor :failure_message

    attr_accessor :order

    attr_accessor :previous_order

    attr_accessor :reward

    # A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items' amounts.
    attr_accessor :amount

    # System generated cause for the redemption being invalid in the context of the provided parameters.
    attr_accessor :reason

    # Redemption result.
    attr_accessor :result

    # Redemption status.
    attr_accessor :status

    attr_accessor :related_redemptions

    # Unique redemption ID of the parent redemption.
    attr_accessor :parent_redemption_id

    # Unique redemption ID of the parent redemption.
    attr_accessor :redemption

    attr_accessor :customer

    # Unique customer ID of the redeeming customer.
    attr_accessor :customer_id

    # Defines the related object.
    attr_accessor :related_object_type

    # Unique related object ID assigned by Voucherify, i.e. v_lfZi4rcEGe0sN9gmnj40bzwK2FH6QUno for a voucher.
    attr_accessor :related_object_id

    # Unique related parent object ID assigned by Voucherify, i.e. v_lfZi4rcEGe0sN9gmnj40bzwK2FH6QUno for a voucher.
    attr_accessor :related_object_parent_id

    # Campaign name
    attr_accessor :campaign_name

    attr_accessor :voucher

    attr_accessor :promotion_tier

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
        :'object' => :'object',
        :'created_at' => :'created_at',
        :'tracking_id' => :'tracking_id',
        :'metadata' => :'metadata',
        :'channel_type' => :'channel_type',
        :'channel_id' => :'channel_id',
        :'failure_code' => :'failure_code',
        :'failure_message' => :'failure_message',
        :'order' => :'order',
        :'previous_order' => :'previous_order',
        :'reward' => :'reward',
        :'amount' => :'amount',
        :'reason' => :'reason',
        :'result' => :'result',
        :'status' => :'status',
        :'related_redemptions' => :'related_redemptions',
        :'parent_redemption_id' => :'parent_redemption_id',
        :'redemption' => :'redemption',
        :'customer' => :'customer',
        :'customer_id' => :'customer_id',
        :'related_object_type' => :'related_object_type',
        :'related_object_id' => :'related_object_id',
        :'related_object_parent_id' => :'related_object_parent_id',
        :'campaign_name' => :'campaign_name',
        :'voucher' => :'voucher',
        :'promotion_tier' => :'promotion_tier'
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
        :'object' => :'String',
        :'created_at' => :'Time',
        :'tracking_id' => :'String',
        :'metadata' => :'Object',
        :'channel_type' => :'String',
        :'channel_id' => :'String',
        :'failure_code' => :'String',
        :'failure_message' => :'String',
        :'order' => :'OrderCalculated',
        :'previous_order' => :'OrderCalculated',
        :'reward' => :'RedemptionRewardResult',
        :'amount' => :'Integer',
        :'reason' => :'String',
        :'result' => :'String',
        :'status' => :'String',
        :'related_redemptions' => :'RedemptionInternalRelatedRedemptions',
        :'parent_redemption_id' => :'String',
        :'redemption' => :'String',
        :'customer' => :'SimpleCustomer',
        :'customer_id' => :'String',
        :'related_object_type' => :'String',
        :'related_object_id' => :'String',
        :'related_object_parent_id' => :'String',
        :'campaign_name' => :'String',
        :'voucher' => :'Voucher',
        :'promotion_tier' => :'PromotionTier'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'customer_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VoucherifySdk::RedemptionInternal` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VoucherifySdk::RedemptionInternal`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = 'redemption'
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'tracking_id')
        self.tracking_id = attributes[:'tracking_id']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'channel_type')
        self.channel_type = attributes[:'channel_type']
      end

      if attributes.key?(:'channel_id')
        self.channel_id = attributes[:'channel_id']
      end

      if attributes.key?(:'failure_code')
        self.failure_code = attributes[:'failure_code']
      end

      if attributes.key?(:'failure_message')
        self.failure_message = attributes[:'failure_message']
      end

      if attributes.key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.key?(:'previous_order')
        self.previous_order = attributes[:'previous_order']
      end

      if attributes.key?(:'reward')
        self.reward = attributes[:'reward']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'reason')
        self.reason = attributes[:'reason']
      end

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'related_redemptions')
        self.related_redemptions = attributes[:'related_redemptions']
      end

      if attributes.key?(:'parent_redemption_id')
        self.parent_redemption_id = attributes[:'parent_redemption_id']
      end

      if attributes.key?(:'redemption')
        self.redemption = attributes[:'redemption']
      end

      if attributes.key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'related_object_type')
        self.related_object_type = attributes[:'related_object_type']
      end

      if attributes.key?(:'related_object_id')
        self.related_object_id = attributes[:'related_object_id']
      end

      if attributes.key?(:'related_object_parent_id')
        self.related_object_parent_id = attributes[:'related_object_parent_id']
      end

      if attributes.key?(:'campaign_name')
        self.campaign_name = attributes[:'campaign_name']
      end

      if attributes.key?(:'voucher')
        self.voucher = attributes[:'voucher']
      end

      if attributes.key?(:'promotion_tier')
        self.promotion_tier = attributes[:'promotion_tier']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      channel_type_validator = EnumAttributeValidator.new('String', ["USER", "API"])
      return false unless channel_type_validator.valid?(@channel_type)
      result_validator = EnumAttributeValidator.new('String', ["SUCCESS", "FAILURE"])
      return false unless result_validator.valid?(@result)
      status_validator = EnumAttributeValidator.new('String', ["SUCCEEDED", "FAILED"])
      return false unless status_validator.valid?(@status)
      related_object_type_validator = EnumAttributeValidator.new('String', ["voucher", "promotion_tier"])
      return false unless related_object_type_validator.valid?(@related_object_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] channel_type Object to be assigned
    def channel_type=(channel_type)
      validator = EnumAttributeValidator.new('String', ["USER", "API"])
      unless validator.valid?(channel_type)
        fail ArgumentError, "invalid value for \"channel_type\", must be one of #{validator.allowable_values}."
      end
      @channel_type = channel_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] result Object to be assigned
    def result=(result)
      validator = EnumAttributeValidator.new('String', ["SUCCESS", "FAILURE"])
      unless validator.valid?(result)
        fail ArgumentError, "invalid value for \"result\", must be one of #{validator.allowable_values}."
      end
      @result = result
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["SUCCEEDED", "FAILED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] related_object_type Object to be assigned
    def related_object_type=(related_object_type)
      validator = EnumAttributeValidator.new('String', ["voucher", "promotion_tier"])
      unless validator.valid?(related_object_type)
        fail ArgumentError, "invalid value for \"related_object_type\", must be one of #{validator.allowable_values}."
      end
      @related_object_type = related_object_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          object == o.object &&
          created_at == o.created_at &&
          tracking_id == o.tracking_id &&
          metadata == o.metadata &&
          channel_type == o.channel_type &&
          channel_id == o.channel_id &&
          failure_code == o.failure_code &&
          failure_message == o.failure_message &&
          order == o.order &&
          previous_order == o.previous_order &&
          reward == o.reward &&
          amount == o.amount &&
          reason == o.reason &&
          result == o.result &&
          status == o.status &&
          related_redemptions == o.related_redemptions &&
          parent_redemption_id == o.parent_redemption_id &&
          redemption == o.redemption &&
          customer == o.customer &&
          customer_id == o.customer_id &&
          related_object_type == o.related_object_type &&
          related_object_id == o.related_object_id &&
          related_object_parent_id == o.related_object_parent_id &&
          campaign_name == o.campaign_name &&
          voucher == o.voucher &&
          promotion_tier == o.promotion_tier
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object, created_at, tracking_id, metadata, channel_type, channel_id, failure_code, failure_message, order, previous_order, reward, amount, reason, result, status, related_redemptions, parent_redemption_id, redemption, customer, customer_id, related_object_type, related_object_id, related_object_parent_id, campaign_name, voucher, promotion_tier].hash
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

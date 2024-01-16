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
  class ExportVoucherFilters
    attr_accessor :junction

    attr_accessor :code

    attr_accessor :voucher_type

    attr_accessor :value

    attr_accessor :discount_type

    attr_accessor :campaign

    attr_accessor :category

    attr_accessor :start_date

    attr_accessor :expiration_date

    attr_accessor :gift_balance

    attr_accessor :loyalty_balance

    attr_accessor :redemption_quantity

    attr_accessor :redemption_count

    attr_accessor :active

    attr_accessor :qr_code

    attr_accessor :bar_code

    attr_accessor :metadata

    attr_accessor :id

    attr_accessor :is_referral_code

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :validity_timeframe_interval

    attr_accessor :validity_timeframe_duration

    attr_accessor :validity_day_of_week

    attr_accessor :discount_amount_limit

    attr_accessor :campaign_id

    attr_accessor :additional_info

    attr_accessor :customer_id

    attr_accessor :discount_unit_type

    attr_accessor :discount_unit_effect

    attr_accessor :customer_source_id

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
        :'junction' => :'junction',
        :'code' => :'code',
        :'voucher_type' => :'voucher_type',
        :'value' => :'value',
        :'discount_type' => :'discount_type',
        :'campaign' => :'campaign',
        :'category' => :'category',
        :'start_date' => :'start_date',
        :'expiration_date' => :'expiration_date',
        :'gift_balance' => :'gift_balance',
        :'loyalty_balance' => :'loyalty_balance',
        :'redemption_quantity' => :'redemption_quantity',
        :'redemption_count' => :'redemption_count',
        :'active' => :'active',
        :'qr_code' => :'qr_code',
        :'bar_code' => :'bar_code',
        :'metadata' => :'metadata',
        :'id' => :'id',
        :'is_referral_code' => :'is_referral_code',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'validity_timeframe_interval' => :'validity_timeframe_interval',
        :'validity_timeframe_duration' => :'validity_timeframe_duration',
        :'validity_day_of_week' => :'validity_day_of_week',
        :'discount_amount_limit' => :'discount_amount_limit',
        :'campaign_id' => :'campaign_id',
        :'additional_info' => :'additional_info',
        :'customer_id' => :'customer_id',
        :'discount_unit_type' => :'discount_unit_type',
        :'discount_unit_effect' => :'discount_unit_effect',
        :'customer_source_id' => :'customer_source_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'junction' => :'Junction',
        :'code' => :'FieldConditions',
        :'voucher_type' => :'FieldConditions',
        :'value' => :'FieldConditions',
        :'discount_type' => :'FieldConditions',
        :'campaign' => :'FieldConditions',
        :'category' => :'FieldConditions',
        :'start_date' => :'FieldConditions',
        :'expiration_date' => :'FieldConditions',
        :'gift_balance' => :'FieldConditions',
        :'loyalty_balance' => :'FieldConditions',
        :'redemption_quantity' => :'FieldConditions',
        :'redemption_count' => :'FieldConditions',
        :'active' => :'FieldConditions',
        :'qr_code' => :'FieldConditions',
        :'bar_code' => :'FieldConditions',
        :'metadata' => :'FieldConditions',
        :'id' => :'FieldConditions',
        :'is_referral_code' => :'FieldConditions',
        :'created_at' => :'FieldConditions',
        :'updated_at' => :'FieldConditions',
        :'validity_timeframe_interval' => :'FieldConditions',
        :'validity_timeframe_duration' => :'FieldConditions',
        :'validity_day_of_week' => :'FieldConditions',
        :'discount_amount_limit' => :'FieldConditions',
        :'campaign_id' => :'FieldConditions',
        :'additional_info' => :'FieldConditions',
        :'customer_id' => :'FieldConditions',
        :'discount_unit_type' => :'FieldConditions',
        :'discount_unit_effect' => :'FieldConditions',
        :'customer_source_id' => :'FieldConditions'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VoucherifySdk::ExportVoucherFilters` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VoucherifySdk::ExportVoucherFilters`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'junction')
        self.junction = attributes[:'junction']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'voucher_type')
        self.voucher_type = attributes[:'voucher_type']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.key?(:'discount_type')
        self.discount_type = attributes[:'discount_type']
      end

      if attributes.key?(:'campaign')
        self.campaign = attributes[:'campaign']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.key?(:'gift_balance')
        self.gift_balance = attributes[:'gift_balance']
      end

      if attributes.key?(:'loyalty_balance')
        self.loyalty_balance = attributes[:'loyalty_balance']
      end

      if attributes.key?(:'redemption_quantity')
        self.redemption_quantity = attributes[:'redemption_quantity']
      end

      if attributes.key?(:'redemption_count')
        self.redemption_count = attributes[:'redemption_count']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'qr_code')
        self.qr_code = attributes[:'qr_code']
      end

      if attributes.key?(:'bar_code')
        self.bar_code = attributes[:'bar_code']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_referral_code')
        self.is_referral_code = attributes[:'is_referral_code']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'validity_timeframe_interval')
        self.validity_timeframe_interval = attributes[:'validity_timeframe_interval']
      end

      if attributes.key?(:'validity_timeframe_duration')
        self.validity_timeframe_duration = attributes[:'validity_timeframe_duration']
      end

      if attributes.key?(:'validity_day_of_week')
        self.validity_day_of_week = attributes[:'validity_day_of_week']
      end

      if attributes.key?(:'discount_amount_limit')
        self.discount_amount_limit = attributes[:'discount_amount_limit']
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'additional_info')
        self.additional_info = attributes[:'additional_info']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'discount_unit_type')
        self.discount_unit_type = attributes[:'discount_unit_type']
      end

      if attributes.key?(:'discount_unit_effect')
        self.discount_unit_effect = attributes[:'discount_unit_effect']
      end

      if attributes.key?(:'customer_source_id')
        self.customer_source_id = attributes[:'customer_source_id']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          junction == o.junction &&
          code == o.code &&
          voucher_type == o.voucher_type &&
          value == o.value &&
          discount_type == o.discount_type &&
          campaign == o.campaign &&
          category == o.category &&
          start_date == o.start_date &&
          expiration_date == o.expiration_date &&
          gift_balance == o.gift_balance &&
          loyalty_balance == o.loyalty_balance &&
          redemption_quantity == o.redemption_quantity &&
          redemption_count == o.redemption_count &&
          active == o.active &&
          qr_code == o.qr_code &&
          bar_code == o.bar_code &&
          metadata == o.metadata &&
          id == o.id &&
          is_referral_code == o.is_referral_code &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          validity_timeframe_interval == o.validity_timeframe_interval &&
          validity_timeframe_duration == o.validity_timeframe_duration &&
          validity_day_of_week == o.validity_day_of_week &&
          discount_amount_limit == o.discount_amount_limit &&
          campaign_id == o.campaign_id &&
          additional_info == o.additional_info &&
          customer_id == o.customer_id &&
          discount_unit_type == o.discount_unit_type &&
          discount_unit_effect == o.discount_unit_effect &&
          customer_source_id == o.customer_source_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [junction, code, voucher_type, value, discount_type, campaign, category, start_date, expiration_date, gift_balance, loyalty_balance, redemption_quantity, redemption_count, active, qr_code, bar_code, metadata, id, is_referral_code, created_at, updated_at, validity_timeframe_interval, validity_timeframe_duration, validity_day_of_week, discount_amount_limit, campaign_id, additional_info, customer_id, discount_unit_type, discount_unit_effect, customer_source_id].hash
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

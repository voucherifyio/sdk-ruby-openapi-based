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
  class ExportOrderOrder
    CREATED_AT = "-created_at".freeze
    CREATED_AT2 = "created_at".freeze
    UPDATED_AT = "-updated_at".freeze
    UPDATED_AT2 = "updated_at".freeze
    STATUS = "-status".freeze
    STATUS2 = "status".freeze

    def self.all_vars
      @all_vars ||= [CREATED_AT, CREATED_AT2, UPDATED_AT, UPDATED_AT2, STATUS, STATUS2].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if ExportOrderOrder.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ExportOrderOrder"
    end
  end
end

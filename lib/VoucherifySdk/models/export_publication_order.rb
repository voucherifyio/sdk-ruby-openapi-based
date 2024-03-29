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
  class ExportPublicationOrder
    ID = "-id".freeze
    ID2 = "id".freeze
    VOUCHER_CODE = "-voucher_code".freeze
    VOUCHER_CODE2 = "voucher_code".freeze
    TRACKING_ID = "-tracking_id".freeze
    TRACKING_ID2 = "tracking_id".freeze
    CUSTOMER_ID = "-customer_id".freeze
    CUSTOMER_ID2 = "customer_id".freeze
    CREATED_AT = "-created_at".freeze
    CREATED_AT2 = "created_at".freeze
    CHANNEL = "-channel".freeze
    CHANNEL2 = "channel".freeze

    def self.all_vars
      @all_vars ||= [ID, ID2, VOUCHER_CODE, VOUCHER_CODE2, TRACKING_ID, TRACKING_ID2, CUSTOMER_ID, CUSTOMER_ID2, CREATED_AT, CREATED_AT2, CHANNEL, CHANNEL2].freeze
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
      return value if ExportPublicationOrder.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ExportPublicationOrder"
    end
  end
end

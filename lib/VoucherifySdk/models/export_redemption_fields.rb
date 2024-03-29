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
  class ExportRedemptionFields
    ID = "id".freeze
    OBJECT = "object".freeze
    DATE = "date".freeze
    VOUCHER_CODE = "voucher_code".freeze
    CAMPAIGN = "campaign".freeze
    PROMOTION_TIER_ID = "promotion_tier_id".freeze
    CUSTOMER_ID = "customer_id".freeze
    CUSTOMER_SOURCE_ID = "customer_source_id".freeze
    CUSTOMER_NAME = "customer_name".freeze
    TRACKING_ID = "tracking_id".freeze
    ORDER_AMOUNT = "order_amount".freeze
    GIFT_AMOUNT = "gift_amount".freeze
    LOYALTY_POINTS = "loyalty_points".freeze
    RESULT = "result".freeze
    FAILURE_CODE = "failure_code".freeze
    FAILURE_MESSAGE = "failure_message".freeze
    METADATA = "metadata".freeze

    def self.all_vars
      @all_vars ||= [ID, OBJECT, DATE, VOUCHER_CODE, CAMPAIGN, PROMOTION_TIER_ID, CUSTOMER_ID, CUSTOMER_SOURCE_ID, CUSTOMER_NAME, TRACKING_ID, ORDER_AMOUNT, GIFT_AMOUNT, LOYALTY_POINTS, RESULT, FAILURE_CODE, FAILURE_MESSAGE, METADATA].freeze
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
      return value if ExportRedemptionFields.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ExportRedemptionFields"
    end
  end
end

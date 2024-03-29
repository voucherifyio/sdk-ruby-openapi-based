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
  class ExportVoucherTransactionsFields
    ID = "id".freeze
    CAMPAIGN_ID = "campaign_id".freeze
    VOUCHER_ID = "voucher_id".freeze
    TYPE = "type".freeze
    SOURCE_ID = "source_id".freeze
    REASON = "reason".freeze
    SOURCE = "source".freeze
    BALANCE = "balance".freeze
    AMOUNT = "amount".freeze
    RELATED_TRANSACTION_ID = "related_transaction_id".freeze
    CREATED_AT = "created_at".freeze
    DETAILS = "details".freeze

    def self.all_vars
      @all_vars ||= [ID, CAMPAIGN_ID, VOUCHER_ID, TYPE, SOURCE_ID, REASON, SOURCE, BALANCE, AMOUNT, RELATED_TRANSACTION_ID, CREATED_AT, DETAILS].freeze
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
      return value if ExportVoucherTransactionsFields.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ExportVoucherTransactionsFields"
    end
  end
end

require 'time'
require 'VoucherifySdk'
require 'json/ext'
require 'dotenv'

current_directory = File.dirname(__FILE__)
parent_directory = File.expand_path('../..', current_directory)
dotenv_path = File.join(parent_directory, '.env')

Dotenv.load(dotenv_path)

module Config

    # setup authorization
    VoucherifySdk.configure do |config|
      # Configure API key authorization: X-App-Id
      config.api_key['X-App-Id'] = ENV['X_APP_ID']
      # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
      # config.api_key_prefix['X-App-Id'] = 'Bearer'

      # Configure API key authorization: X-App-Token
      config.api_key['X-App-Token'] = ENV['X_APP_TOKEN']
      # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
      # config.api_key_prefix['X-App-Token'] = 'Bearer'
      config.host = ENV['VOUCHERIFY_HOST'] || 'https://api.voucherify.io'
    end
    
    def self.products_api_instance
      return VoucherifySdk::ProductsApi.new()
    end

    def self.campaigns_api_instance
      return VoucherifySdk::CampaignsApi.new()
    end

    def self.validation_rules_api_instance
      return VoucherifySdk::ValidationRulesApi.new()
    end

    def self.customers_api_instance
      return VoucherifySdk::CustomersApi.new()
    end

    def self.exports_api_instance
      return VoucherifySdk::ExportsApi.new()
    end

    def self.redemptions_api_instance
      return VoucherifySdk::RedemptionsApi.new()
    end

    def self.publications_api_instance
      return VoucherifySdk::PublicationsApi.new()
    end

    def self.qualifications_api_instance
      return VoucherifySdk::QualificationsApi.new()
    end

    def self.stackable_discounts_api_instance
      return VoucherifySdk::StackableDiscountsApi.new()
    end

    def self.vouchers_api_instance
      return VoucherifySdk::VouchersApi.new()
    end

    def self.events_api_instance
      return VoucherifySdk::EventsApi.new()
    end

    def generate_random_string(length=10)
      chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
      random_string = Array.new(length) { chars.sample }.join
      return random_string
    end

end


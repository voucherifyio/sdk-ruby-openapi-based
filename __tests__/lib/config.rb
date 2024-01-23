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

    customers_api_instance = VoucherifySdk::CustomersApi.new()
    exports_api_instance = VoucherifySdk::ExportsApi.new()
    redemptions_api_instance = VoucherifySdk::RedemptionsApi.new()
    products_api_instance = VoucherifySdk::ProductsApi.new()
    campaigns_api_instance = VoucherifySdk::CampaignsApi.new()
    validation_rules_api_instance = VoucherifySdk::ValidationRulesApi.new()
    publications_api_instance = VoucherifySdk::PublicationsApi.new()
    qualifications_api_instance = VoucherifySdk::QualificationsApi.new()
    stackable_discounts_api_instance = VoucherifySdk::StackableDiscountsApi.new()

    def self.products_api_instance
        return VoucherifySdk::ProductsApi.new()
    end

    def generate_random_string(length=10)
      chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
      random_string = Array.new(length) { chars.sample }.join
      return random_string
    end

end


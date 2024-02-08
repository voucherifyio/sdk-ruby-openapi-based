# Load the gem
require 'VoucherifySdk'

    # Setup authorization
    VoucherifySdk.configure do |config|
        # Configure API key authorization: X-App-Id
        config.api_key['X-App-Id'] = 'YOUR API KEY'

        # Configure API key authorization: X-App-Token
        config.api_key['X-App-Token'] = 'YOUR API KEY'
    end

api_instance = VoucherifySdk::VouchersApi.new
    code = 'code_example' # String | A **code** that identifies the voucher or a unique voucher ID assigned by Voucherify, i.e. `v_TzD19aeNiqGc9LWciMWknyEZT8IW7u4u`.
    vouchers_balance_update_request_body = VoucherifySdk::VouchersBalanceUpdateRequestBody.new({amount: 37}) # VouchersBalanceUpdateRequestBody | Provide the amount to be added to/subtracted from the voucher.

begin
  #Add or Remove Voucher Balance
  result = api_instance.update_voucher_balance(code, vouchers_balance_update_request_body)
    p result
rescue VoucherifySdk::ApiError => e
puts "Exception when calling VouchersApi->update_voucher_balance: #{e}"
end

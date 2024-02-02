require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require_relative '../lib/stackables.rb'

RSpec.describe 'Validations API', :order => :defined do
  before(:each) do
    @validations_api_instance = Config.validations_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'validate stacked discounts', :order => :first do
    result = validate_stacked_discounts(@validations_api_instance, @voucherify_data.get_voucher().code)
    expect(result).not_to be_nil
  end
end
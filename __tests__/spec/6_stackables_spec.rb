require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require_relative '../lib/stackables.rb'

RSpec.describe 'Stackables API', :order => :defined do
  before(:each) do
    @stackable_discounts_api_instance = Config.stackable_discounts_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'validate stacked discounts', :order => :first do
    result = validate_stacked_discounts(@stackable_discounts_api_instance, @voucherify_data.get_voucher().code)
    expect(result).not_to be_nil
  end

  it 'redeem stacked discounts', :order => :second do
    result = redeem_stacked_discounts(@stackable_discounts_api_instance, @voucherify_data.get_voucher().code)
    expect(result).not_to be_nil
  end
end
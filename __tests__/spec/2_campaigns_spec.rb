require_relative '../lib/campaigns.rb'
require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'

RSpec.describe 'Campaigns API', :order => :defined do
  before(:each) do
    @campaigns_api_instance = Config.campaigns_api_instance()
    @validation_rules_api_instance = Config.validation_rules_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  $created_validation_rule = nil
  $created_discount_campaign = nil
  $created_promotion_campaign = nil
  $created_loyalty_campaign = nil

  it 'create a campaign with validation rule', :order => :first do
    created_validation_rule = create_validation_rule(@validation_rules_api_instance, @voucherify_data.get_product.id)

    expect(created_validation_rule).not_to be_nil

    $created_validation_rule = created_validation_rule
  end

  it 'create a discount campaign', :order => :second do
    created_discount_campaign = create_discount_campaign(@campaigns_api_instance, $created_validation_rule.id)

    expect(created_discount_campaign).not_to be_nil

    $created_discount_campaign = created_discount_campaign
    @voucherify_data.set_discount_campaign(created_discount_campaign)
  end

  it 'create a promotion campaign', :order => :thrid do
    created_promotion_campaign = create_promotion_campaign(@campaigns_api_instance)

    expect(created_promotion_campaign).not_to be_nil

    $created_promotion_campaign = created_promotion_campaign
  end

  it 'create a loyalty campaign', :order => :fourth do
    created_loyalty_campaign = create_loyalty_campaign(@campaigns_api_instance)

    expect(created_loyalty_campaign).not_to be_nil

    $created_loyalty_campaign = created_loyalty_campaign
    @voucherify_data.set_loyalty_campaign(created_loyalty_campaign)
  end
  
  it 'delete the promotion campaign', :order => :fifth do
    deleted_promotion_campaign = delete_campaign(@campaigns_api_instance, $created_promotion_campaign.id)

    expect(deleted_promotion_campaign).not_to be_nil
  end

  it 'create a voucher', :order => :sixth do
    created_voucher = @campaigns_api_instance.add_vouchers_to_campaign($created_discount_campaign.id, {
        vouchers_count: 1,
    })
    @voucherify_data.set_voucher(created_voucher)
    expect(created_voucher).not_to be_nil
  end

  it 'create a bundle of vouchers', :order => :seventh do
    async_action = @campaigns_api_instance.add_vouchers_to_campaign($created_discount_campaign.id, {
        vouchers_count: 5,
    })
    expect(async_action).not_to be_nil
  end

  it 'create a loyalty card', :order => :sixth do
    created_loyalty_card = @campaigns_api_instance.add_vouchers_to_campaign($created_loyalty_campaign.id, {
        vouchers_count: 1,
    })
    @voucherify_data.set_loyalty_card(created_loyalty_card)
    expect(created_loyalty_card).not_to be_nil
  end
end

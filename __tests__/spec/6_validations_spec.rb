require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require_relative '../lib/stackables.rb'

RSpec.describe 'Validations API', :order => :defined do
  before(:each) do
    @validations_api_instance = Config.validations_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  $validation_result_successful = nil
  $order_amount_successful = 20000

  $validation_result_failed = nil
  $order_amount_failed = 1000

  it 'validate stacked discounts (successful)', :order => :first do
    $validation_result_successful = validate_stacked_discounts(
        @validations_api_instance,
        @voucherify_data.get_voucher().code,
        @voucherify_data.get_product.id,
        @voucherify_data.get_customer(),
        $order_amount_successful
    )

    expect($validation_result_successful).not_to be_nil
    expect($validation_result_successful.valid).to be(true)
  end

  it 'validates presence of the redeemables array (successful)', :order => :second do
      expect($validation_result_successful.redeemables).not_to be_nil
      expect($validation_result_successful.redeemables).to be_an(Array)
  end

  it 'checks if redeemables items have necessary keys (successful)', :order => :third do
    redeemable = $validation_result_successful.redeemables.first

    expect(redeemable.status).to eq("APPLICABLE")
    expect(redeemable.id).not_to be_nil
    expect(redeemable.object).to eq("voucher")
    expect(redeemable.order).to be_a(VoucherifySdk::OrderCalculated)
    expect(redeemable.applicable_to).to be_a(VoucherifySdk::ApplicableToResultList)
    expect(redeemable.inapplicable_to).to be_a(VoucherifySdk::InapplicableToResultList)
    expect(redeemable.result).to be_a(VoucherifySdk::RedeemableResultPromotionTier)
  end

  it 'validates the order object structure (successful)', :order => :fourth do
    order = $validation_result_successful.order

    expect(order).not_to be_nil
    expect(order.amount).to eq($order_amount_successful)
    expect(order.total_amount).to eq($order_amount_successful - @voucherify_data.get_discount_campaign().voucher.discount.amount_off)
  end

  it 'validates details of the discount in the first redeemable (successful)', :order => :fifth do
    discount = $validation_result_successful.redeemables.first.result.discount

    expect(discount.type).to eq("AMOUNT")
    expect(discount.amount_off).to eq(@voucherify_data.get_discount_campaign().voucher.discount.amount_off)
  end

  it 'checks is redeemables applicable_to points on product (successful)', :order => :sixth do
    redeemable = $validation_result_successful.redeemables.first
    applicable_to = redeemable.applicable_to

    expect(applicable_to.data).not_to be_nil
    expect(applicable_to.data).to be_a(Array)

    applicable_to_first = applicable_to.data.first
    expect(applicable_to_first).not_to be_nil
    expect(applicable_to_first.object).to eq("product")
    expect(applicable_to_first.id).to eq(@voucherify_data.get_product().id)
  end

  it 'checks validation customer response is valid (successful)', :order => :seventh do
    expect($validation_result_successful.tracking_id).to_not be_nil
    expect($validation_result_successful.order.customer).to_not be_nil
    expect($validation_result_successful.order.customer).to be_a(VoucherifySdk::CustomerId)
    expect($validation_result_successful.order.customer.id).to eq(@voucherify_data.get_customer().id)
    expect($validation_result_successful.order.customer.object).to eq("customer")
  end

  #########
  #########
  #########

  it 'validate stacked discounts (failed)', :order => :eigth do
    $validation_result_failed = validate_stacked_discounts(
      @validations_api_instance,
      @voucherify_data.get_voucher_with_more_than_validation_rule().code,
      @voucherify_data.get_product.id,
      @voucherify_data.get_customer(),
      $order_amount_failed
    )

    expect($validation_result_failed).not_to be_nil
    expect($validation_result_failed.valid).to be(false)
  end

  it 'validates presence of the redeemables and inapplicable_redeemables (failed)', :order => :ninth do
      expect($validation_result_failed.redeemables).not_to be_nil
      expect($validation_result_failed.redeemables).to be_an(Array)

      expect($validation_result_failed.inapplicable_redeemables).not_to be_nil
      expect($validation_result_failed.inapplicable_redeemables).to be_an(Array)
  end

  it 'checks if redeemables items have necessary keys (failed)', :order => :tenth do
    redeemable = $validation_result_failed.redeemables.first

    expect(redeemable.status).to eq("INAPPLICABLE")
    expect(redeemable.id).to eq(@voucherify_data.get_voucher_with_more_than_validation_rule().code)
    expect(redeemable.object).to eq("voucher")

    expect(redeemable.result).not_to be_nil
    expect(redeemable.result).to be_a(VoucherifySdk::ValidationsRedeemableInapplicableResult)

    expect(redeemable.result.error).not_to be_nil
    expect(redeemable.result.error).to be_an(VoucherifySdk::Error)
  end

  it 'checks validation customer response is valid (failed)', :order => :eleventh do
    expect($validation_result_failed.tracking_id).to_not be_nil
  end

end

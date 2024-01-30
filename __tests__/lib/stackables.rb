def create_request_body_redeemable(voucher_id)
  begin
    validations_validate_request_body_redeemables = [
      VoucherifySdk::RedeemVoucher.new({
          object: "voucher", id: voucher_id
      })
    ]
    return validations_validate_request_body_redeemables
  end
end


def validate_stacked_discounts(stackable_discounts_api_instance, voucher_id)
  begin
    result = stackable_discounts_api_instance.validate_stacked_discounts({
      validations_validate_request_body: VoucherifySdk::ValidationsValidateRequestBody.new({
        redeemables: create_request_body_redeemable(voucher_id),
        order: VoucherifySdk::Order.new(amount: 20000)
      })
    })
    return result;
  rescue VoucherifySdk::ApiError => e
    return nil;
  end
end

def redeem_stacked_discounts(stackable_discounts_api_instance, voucher_id)
  begin
    result = stackable_discounts_api_instance.redeem_stacked_discounts({
      redemptions_redeem_request_body: VoucherifySdk::RedemptionsRedeemRequestBody.new({
        redeemables: create_request_body_redeemable(voucher_id),
        order: VoucherifySdk::Order.new(amount: 20000)
      })
    })
    return result;
  rescue VoucherifySdk::ApiError => e
    return nil;
  end
end
require_relative 'utils.rb'
require 'VoucherifySdk'

def create_validation_rule(validation_rules_api_instance, product_id)
    begin
        created_validation_rule = validation_rules_api_instance.create_validation_rules({
            validation_rules_create_request_body: VoucherifySdk::ValidationRulesCreateRequestBody.new({
            name: generate_random_string(),
            applicable_to: VoucherifySdk::ValidationRuleBaseApplicableTo.new({
                included: [VoucherifySdk::ApplicableTo.new({
                object: "product",
                product_id: product_id
                })]
            }),
            type:"basic",
            })
        })

        return created_validation_rule
    rescue VoucherifySdk::ApiError => e
        return nil
    end
end

def create_discount_campaign(campaigns_api_instance, validation_rule_id)
    begin
        campaign = campaigns_api_instance.create_campaign({
            campaigns_create_request_body: VoucherifySdk::CampaignsCreateDiscountCouponsCampaign.new({
                campaign_type: "DISCOUNT_COUPONS",
                name: generate_random_string(),
                type: "AUTO_UPDATE",
                voucher: VoucherifySdk::DiscountCouponsCampaignVoucher.new({
                    discount: VoucherifySdk::DiscountAmount.new({
                        type: "AMOUNT",
                        amount_off: 1000
                    })
                }),
                validation_rules: [validation_rule_id]
            })    
        })

        return campaign
    rescue VoucherifySdk::ApiError => e
        return nil
    end
end

def create_promotion_campaign(campaigns_api_instance)
    begin
        campaign = campaigns_api_instance.create_campaign({
            campaigns_create_request_body: VoucherifySdk::CampaignsCreatePromotionCampaign.new({
                campaign_type: "PROMOTION",
                name: generate_random_string(),
                promotion: VoucherifySdk::SchemaThatContainsUniquePropertiesForPromotionCampaignPromotion.new({
                tiers: [VoucherifySdk::PromotionTierCreateParams.new({
                        name: generate_random_string(),
                        banner: generate_random_string(),
                        action: VoucherifySdk::PromotionTierAction.new({
                        discount: VoucherifySdk::DiscountAmount.new({
                                type: "AMOUNT",
                                amount_off: 1000
                            }),
                        })
                    })]
                })
            })
        })

        return campaign
    end 
end

def create_loyalty_campaign(campaigns_api_instance)
    begin
        campaign = campaigns_api_instance.create_campaign({
            campaigns_create_request_body: VoucherifySdk::CampaignsCreateLoyaltyCampaign.new({
                campaign_type: "LOYALTY_CARD",
                name: generate_random_string(),
                voucher: VoucherifySdk::CampaignLoyaltyVoucher.new({
                    type: "LOYALTY_CARD",
                    loyalty_card: VoucherifySdk::CampaignLoyaltyCard.new({
                        points: 1000,
                    })
                })
            })
        })
    end
end

def delete_campaign(campaigns_api_instance, campaign_id)
    begin
        result = campaigns_api_instance.delete_campaign(campaign_id)

        return result
    rescue VoucherifySdk::ApiError => e
        return nil
    end
end
        
        


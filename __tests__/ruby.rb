# typed: strict

def generate_random_string(length=10)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  random_string = Array.new(length) { chars.sample }.join
  return random_string
end

require 'time'
require 'VoucherifySdk'
require 'json/ext'
require 'dotenv/load'

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

# create variables to store products data
$created_product;
$created_product2;
begin
  # Create Product1
  $created_product = products_api_instance.create_product({
    products_create_request_body: VoucherifySdk::ProductsCreateRequestBody.new({
      source_id: generate_random_string(),
      name: generate_random_string(),
      price: 20000,
      attributes: ["color", "memory", "processor"]
    })
  });
  puts "Created product 1:";
  puts JSON.pretty_generate($created_product.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->create_product: #{e}"
end
begin
  # Create Product2
  $created_product2 = products_api_instance.create_product({
    products_create_request_body: VoucherifySdk::ProductsCreateRequestBody.new({
      source_id: generate_random_string(),
      name: generate_random_string(),
      price: 60000,
      attributes: ["color", "memory", "processor"]
    })
  });
  puts "Created product 2:";
  puts JSON.pretty_generate($created_product2.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->create_product: #{e}"
end

# create variable to store validation rule data
$created_validation_rule;
begin
  # Create Validation Rule
  $created_validation_rule = validation_rules_api_instance.create_validation_rules({
    validation_rules_create_request_body: VoucherifySdk::ValidationRulesCreateRequestBody.new({
      name: generate_random_string(),
      applicable_to: VoucherifySdk::ValidationRuleBaseApplicableTo.new({
        included: [VoucherifySdk::ApplicableTo.new({
          object: "product",
          product_id: $created_product.id
        })]
      }),
      type:"basic",
    })
  })
  puts "Created Validation Rule:";
  puts JSON.pretty_generate($created_product2.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ValidationRulesApi->create_validation_rules: #{e}"
end


# create variables to store customer data
$created_customer;
begin
  # Create Customer
  $created_customer = customers_api_instance.create_customer({
    customers_create_request_body: VoucherifySdk::CustomersCreateRequestBody.new({
      source_id: generate_random_string(),
      name: "John Doe",
      address: VoucherifySdk::CustomerBaseAddress.new({
        country: "US",
        city: "New York",
        line_1: "5th Avenue",
        line_2: "1/2",
        postal_code: "11-111"
      })
    })
  })
  puts "Created customer:";
  puts JSON.pretty_generate($created_customer.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end

# create variables to store campaigns data
$created_discount_campaign;
$created_promotion_campaign;
begin
  # Create Discount Campaign
  $created_discount_campaign = campaigns_api_instance.create_campaign({
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
      validation_rules: [$created_validation_rule.id]
    })
  })
  puts "Created discount campaigns:";
  puts JSON.pretty_generate($created_discount_campaign.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->create_campaign: #{e}"
end

begin
  # Create Promotion Campaign
  $created_promotion_campaign = campaigns_api_instance.create_campaign({
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
  puts "Created promotion campaigns:";
  puts JSON.pretty_generate($created_promotion_campaign.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->create_campaign: #{e}"
end

$created_voucher;
begin
  # Add Vouchers to Campaign
  $created_voucher = campaigns_api_instance.add_vouchers_to_campaign($created_discount_campaign.id, {
    vouchers_count: 1,
  })
  puts "Created voucher:";
  puts JSON.pretty_generate($created_voucher.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->add_vouchers_to_campaign: #{e}"
end

$publication;
begin
  # Create Publication
  $publication = publications_api_instance.create_publication({
    join_once: true,
    publications_create_request_body: VoucherifySdk::CreatePublicationWithCampaign.new({
      customer: VoucherifySdk::Customer.new({
        id: $created_customer.id
      }),
      campaign: VoucherifySdk::CreatePublicationCampaign.new({
          name: $created_discount_campaign.name
        })
      })
  })
  puts "Published voucher:";
  puts JSON.pretty_generate($publication.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PublicationsApi->create_publication: #{e}"
end

$qualifications
begin
  # Check Eligibility
  $qualifications = qualifications_api_instance.check_eligibility({
    qualifications_check_eligibility_request_body: VoucherifySdk::QualificationsCheckEligibilityRequestBody.new({
        customer: VoucherifySdk::Customer.new({
          id: $created_customer.id
        }),
        order: VoucherifySdk::Order.new({
            amount: 20000,
        }),
        options: VoucherifySdk::QualificationsOption.new({
            limit: 100
        })
    })
  })
  puts "Check Eligibility:";
  puts JSON.pretty_generate($qualifications.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling QualificationsApi->check_eligibility: #{e}"
end

$one_applicable_voucher_qualifications = $qualifications.redeemables.data.select { |e| e.object == "voucher" }.take(1)
puts "One Applicable Voucher Qualifications:";
puts JSON.pretty_generate($one_applicable_voucher_qualifications.map { |e| e.to_hash });
puts;
$three_applicable_promotion_tier_qualifications = $qualifications.redeemables.data.select { |e| e.object == "promotion_tier" }.take(3)
puts "Three Applicable Promotion Tier Qualifications:";
puts JSON.pretty_generate($three_applicable_promotion_tier_qualifications.map { |e| e.to_hash });
puts;
$validations_validate_request_body_redeemables = (
  $one_applicable_voucher_qualifications.map { |e| VoucherifySdk::RedeemVoucher.new({
      object: "voucher", id: e.id
  })}.concat(
    $three_applicable_promotion_tier_qualifications.map { |e| VoucherifySdk::RedeemPromotionTier.new({
    object: "promotion_tier", id: e.id
    })}
  )
)

begin
  # Validate Stackable Discounts
  result = stackable_discounts_api_instance.validate_stacked_discounts({
    validations_validate_request_body: VoucherifySdk::ValidationsValidateRequestBody.new({
      redeemables: $validations_validate_request_body_redeemables,
      order: VoucherifySdk::Order.new(amount: 20000)
    })
  })
  puts "Validate Stackable Discounts:";
  puts JSON.pretty_generate(result.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling StackableDiscountsApi->redeem_stacked_discounts: #{e}"
end

begin
  # Redeem Stackable Discounts
  result = stackable_discounts_api_instance.redeem_stacked_discounts({
    redemptions_redeem_request_body: VoucherifySdk::RedemptionsRedeemRequestBody.new({
      redeemables: $validations_validate_request_body_redeemables,
      order: VoucherifySdk::Order.new(amount: 20000)
    })
  })
  puts "Redeem Stackable Discounts:";
  puts JSON.pretty_generate(result.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling StackableDiscountsApi->redeem_stacked_discounts: #{e}"
end

begin
  # Delete Discount Campaign
  result = campaigns_api_instance.delete_campaign($created_discount_campaign.id, {
    force: true
  })
  puts "Delete Discount Campaign:";
  puts JSON.pretty_generate(result.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->delete_campaign: #{e}"
end

begin
  # Delete Promotion Campaign
  result = campaigns_api_instance.delete_campaign($created_promotion_campaign.id, {
    force: true
  })
  puts "Delete Promotion Campaign:";
  puts JSON.pretty_generate(result.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->delete_campaign: #{e}"
end

begin
  # Delete Customer
  result = customers_api_instance.customer_permanently_deletion($created_customer.id)
  puts "Deleted customer:";
  puts JSON.pretty_generate(result.to_hash);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->delete_product: #{e}"
end

begin
  # Delete Product
  result = products_api_instance.delete_product($created_product.id, {
    force: true
  })
  puts "Deleted product 1:";
  puts JSON.pretty_generate(result);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->delete_product: #{e}"
end

begin
  # Delete Product
  result = products_api_instance.delete_product($created_product2.id, {
    force: true
  })
  puts "Deleted product 1:";
  puts JSON.pretty_generate(result);
  puts;
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->delete_product: #{e}"
end

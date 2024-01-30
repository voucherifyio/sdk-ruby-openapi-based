require 'singleton'

class VoucherifyData
  include Singleton

  attr_accessor :product, :customer

  def initialize
    @product = nil
    @customer = nil
    @discount_campaign = nil
    @loyalty_campaign = nil
    @voucher = nil
    @loyalty_card = nil
    @product_ids = []
    @sku = nil
  end

  def set_discount_campaign(discount_campaign)
    @discount_campaign = discount_campaign
  end

  def set_product(product)
    @product = product
  end

  def set_customer(customer)
    @customer = customer
  end

  def add_product_id(product_id)
    @product_ids.push(product_id)
  end

  def get_product_ids
    @product_ids
  end

  def set_sku(sku)
    @sku = sku
  end

  def get_sku
    @sku
  end

  def set_voucher(voucher)
    @voucher = voucher
  end

  def get_product
    @product
  end

  def get_customer
    @customer
  end 

  def get_discount_campaign
    @discount_campaign
  end

  def get_voucher
    @voucher
  end

  def get_loyalty_campaign
    @loyalty_campaign
  end

  def set_loyalty_campaign(loyalty_campaign)
    @loyalty_campaign = loyalty_campaign
  end

  def get_loyalty_card
    @loyalty_card
  end

  def set_loyalty_card(loyalty_card)
    @loyalty_card = loyalty_card
  end
end
require_relative 'utils.rb'
require 'VoucherifySdk'

def create_product(products_api_instance, price)
  begin
    product = products_api_instance.create_product({
      products_create_request_body: VoucherifySdk::ProductsCreateRequestBody.new({
        source_id: generate_random_string(),
        name: generate_random_string(),
        price: price,
        attributes: ["color", "memory", "processor"]
      })
    })
    return product
  rescue VoucherifySdk::ApiError => e
    return nil
  end
end

def delete_product(products_api_instance, product_id)
  begin
    result = products_api_instance.delete_product(product_id, {
      force: true
    })
    return result
  rescue VoucherifySdk::ApiError => e
    return nil
  end
end

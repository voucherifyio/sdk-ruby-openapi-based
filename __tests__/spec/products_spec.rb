require_relative '../lib/products.rb'
require_relative '../lib/config.rb'

RSpec.describe 'Products API' do
  before(:each) do
    @products_api_instance = Config.products_api_instance()
  end

  it 'creates a product with price 20000' do
    created_product = create_product(@products_api_instance, 20000)
    expect(created_product).not_to be_nil
  end

  it 'create a product with price 60000' do
    created_product = create_product(@products_api_instance, 60000)
    expect(created_product).not_to be_nil
  end
end

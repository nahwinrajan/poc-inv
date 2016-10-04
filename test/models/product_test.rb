require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products
  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:name].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:quantity].any?
  end

  test 'product price must be positive' do
    product = Product.new(
      :name   => 'demo - unit testing',
      :description => 'dummy product data for unit testing',
      :quantity => 46,
    )

    product.price = -3
    assert product.invalid?
    assert_equal 'must be greater than or equal to 0.01',
      product.errors[:price].join('; ')

    product.price = 0
    assert product.invalid?
    assert_equal 'must be greater than or equal to 0.01',
      product.error[:price].join('; ')

    product.price = 27
    assert product.valid?
  end

  test 'product quantity must be positive' do
    product = Product.new(
      :name   => 'demo - unit testing',
      :description => 'dummy product data for unit testing',
      :price => 57,
    )

    product.quantity = -3
    assert product.invalid?
    assert_equal 'must be greater than or equal to 0',
      product.errors[:quantity].join('; ')

    product.quantity = 0
    assert product.invalid?
    assert_equal 'must be greater than or equal to 0',
      product.error[:quantity].join('; ')

    product.quantity = 5
    assert product.valid?
  end

  test 'product name must be unique' do
    product = Product.new(
      name: 'marker original japan',
      description: 'special marker',
      price: '230000',
      quantity: 10,
      image_url: 'https://hd.unsplash.com/photo-1432888498266-38ffec3eaf0a'
    )

    assert !product.save
    assert_equal I18n.translate('activerecord.errors.messages.taken'), 
      product.errors[:name].join('; ')
  end
end

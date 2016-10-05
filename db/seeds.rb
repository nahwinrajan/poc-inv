# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Product.delete_all
500.times do
  product = Product.create(
    :name => Faker::Commerce.product_name,
    :description => Faker::Lorem.paragraphs(rand(5..15)).join('\n'),
    :quantity => Faker::Number.between(1, 1000),
    :price => Faker::Commerce.price,
    :image_url =>Faker::Placeholdit.image("120x120", 'jpg', '252830', '1bc98e', 'Awesome Product')
  )
end

Client.destroy_all
30.times do
  client = Client.create(
    :name => Faker::Company.name,
    :address => [Faker::Address.street_address, Faker::Address.city,
      Faker::Address.country, Faker::Address.zip].join(', '),
    :phone => Faker::PhoneNumber.phone_number,
    :email => Faker::Internet.email
  )
end

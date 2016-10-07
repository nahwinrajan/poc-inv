# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Product.delete_all
Product.create(
  name: "packaging box medium",
  description: "brown packaging box in medium size",
  quantity: 1000,
  price: 20000,
  image_url: "shipment-box.png"
)
Product.create(
  name: "folder envelope plastic",
  description: "folder map made from plastic and colourful",
  quantity: 200,
  price: 15000,
  image_url: "map-folder.jpg"
)
500.times do
  Product.create(
    :name => Faker::Commerce.product_name,
    :description => Faker::Lorem.paragraphs(rand(5..15)).join('\n'),
    :quantity => Faker::Number.between(1, 1000),
    :price => Faker::Commerce.price,
    :image_url =>Faker::Placeholdit.image("400x400", 'jpg', '252830', '1bc98e', 'Awesome Product')
  )
end

Client.destroy_all
Client.create(
  name: "Acellent Co",
  address: "Street Ace 3",
  phone: "555-5555",
  email: "acellent@purchase.com"
)
Client.create(
  name: "Some FO",
  address: "Jalan Braga 1",
  phone: "321-514876",
  email: "fo.me@purchasedept.com"
)
30.times do
  Client.create(
    :name => Faker::Company.name,
    :address => [Faker::Address.street_address, Faker::Address.city,
      Faker::Address.country, Faker::Address.zip].join(', '),
    :phone => Faker::PhoneNumber.phone_number,
    :email => Faker::Internet.email
  )
end

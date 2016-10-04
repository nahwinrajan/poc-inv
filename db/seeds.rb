# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create(
  :name => 'Example Product - 1',
  :description => '<p>White jasmine</p><br /><p>dummy product data for development and testing</p>',
  :quantity => 99,
  :price => 1575000.50,
  :image_url =>'https://hd.unsplash.com/photo-1465628976988-fe43bda15798'
)
Product.create(
  :name => 'Example Product - 2',
  :description => '<p>Berries</p><br /><p>dummy product data for development and testing</p>',
  :quantity => 60,
  :price => 500000,
  :image_url =>'https://hd.unsplash.com/reserve/unsplash_52ce2b0530dab_1.JPG'
)
Product.create(
  :name => 'Example Product - 3',
  :description => '<p>Lemonade, lot of them</p><br /><p>dummy product data for development and testing</p>',
  :quantity => 999,
  :price => 2000000.00,
  :image_url =>'https://hd.unsplash.com/photo-1463123081488-789f998ac9c4'
)
Product.create(
  :name => 'Example Product - 4',
  :description => '<p>roses are red</p><br /><p>dummy product data for development and testing</p>',
  :quantity => 5,
  :price => 7500000.00,
  :image_url =>'https://hd.unsplash.com/photo-1462733441571-9312d0b53818'
)
Product.create(
  :name => 'Example Product - 5',
  :description => '<p>All remembering journal</p><br /><p>dummy product data for development and testing</p>',
  :quantity => 3,
  :price => 333888.55,
  :image_url =>'https://hd.unsplash.com/reserve/imNop2O1Rit190cSkxXv_1-7069.jpg'
)

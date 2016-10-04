class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.decimal :price, :precision => 15, :scale => 2
      t.string :image_url

      t.timestamps null: false
    end

    add_index :products, :name, unique: true
  end
end

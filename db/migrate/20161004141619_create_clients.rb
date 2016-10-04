class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
    add_index :clients, :name, unique: true
  end
end

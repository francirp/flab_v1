class CreateProductAccessories < ActiveRecord::Migration
  def change
    create_table :product_accessories do |t|
      t.integer :product_id
      t.integer :accessory_id

      t.timestamps
    end
  end
end

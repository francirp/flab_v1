class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :handle
      t.string :title
      t.float :price

      t.timestamps
    end
  end
end

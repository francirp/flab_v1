class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :handle
      t.string :slug
      t.string :title
      t.text :short_description
      t.file :featured_image
      t.float :price

      t.timestamps
    end
  end
end

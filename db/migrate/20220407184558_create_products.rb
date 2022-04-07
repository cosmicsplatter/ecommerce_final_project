class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :product_price
      t.string :product_image
      t.string :product_description

      t.timestamps
    end
  end
end

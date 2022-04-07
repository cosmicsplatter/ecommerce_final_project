class AddFieldsToBeer < ActiveRecord::Migration[7.0]
  def change
    add_column :beers, :name, :string
    add_column :beers, :price, :float
    add_column :beers, :description, :string
    add_reference :beers, :category, index: true
  end
end

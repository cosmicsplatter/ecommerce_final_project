class AddFieldsToBrewery < ActiveRecord::Migration[7.0]
  def change
    add_column :breweries, :name, :string
    add_column :breweries, :description, :string
  end
end

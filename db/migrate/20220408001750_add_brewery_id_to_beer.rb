class AddBreweryIdToBeer < ActiveRecord::Migration[7.0]
  def change
    add_reference :beers, :brewery, null: false, foreign_key: true
  end
end

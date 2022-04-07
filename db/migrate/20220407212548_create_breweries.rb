class CreateBreweries < ActiveRecord::Migration[7.0]
  def change
    create_table :breweries do |t|

      t.timestamps
    end
  end
end

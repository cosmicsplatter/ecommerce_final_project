class CreateBeers < ActiveRecord::Migration[7.0]
  def change
    create_table :beers do |t|

      t.timestamps
    end
  end
end

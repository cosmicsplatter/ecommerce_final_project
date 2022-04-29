class AddImageTooBeers < ActiveRecord::Migration[7.0]
  def change
    add_column :beers, :image, :string
  end
end

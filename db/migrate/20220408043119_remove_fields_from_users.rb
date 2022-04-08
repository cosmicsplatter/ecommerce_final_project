class RemoveFieldsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :address
    remove_column :users, :city
    remove_column :users, :province
    remove_column :users, :postal
  end
end

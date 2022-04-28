class ChangeTypeInUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :province, :string
    add_reference :users, :province, index: true
  end
end

class AddFieldsToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :title, :string
    add_column :reviews, :comment, :string
    add_column :reviews, :rating, :integer
    add_reference :reviews, :beer, null: false, foreign_key: true
    add_reference :reviews, :user, null: false, foreign_key: true
  end
end

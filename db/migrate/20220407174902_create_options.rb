class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :option_name
      t.string :option_description

      t.timestamps
    end
  end
end

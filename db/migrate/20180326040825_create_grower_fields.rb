class CreateGrowerFields < ActiveRecord::Migration[5.1]
  def change
    create_table :grower_fields do |t|
      t.integer :grower_id
      t.integer :field_id
      t.date :assign_date

      t.timestamps
    end
  end
end

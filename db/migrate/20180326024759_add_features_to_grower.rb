class AddFeaturesToGrower < ActiveRecord::Migration[5.1]
  def change
    add_column :growers, :birthday, :dateTime
    add_column :growers, :preferred_shipping, :string, limit: 20, default: '2DAY'
  end
end

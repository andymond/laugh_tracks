class AddStateToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :state, :text
  end
end

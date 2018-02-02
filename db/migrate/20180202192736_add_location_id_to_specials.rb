class AddLocationIdToSpecials < ActiveRecord::Migration[5.1]
  def change
    add_column :specials, :location_id, :integer
  end
end

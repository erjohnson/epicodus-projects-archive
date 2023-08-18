class AddRegionSightings < ActiveRecord::Migration
  def change
    add_column :sightings, :region_id, :int
  end
end

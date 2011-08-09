class CreateStops < ActiveRecord::Migration
  def self.up
    create_table :stops do |t|
      t.integer :route_id
      t.integer :location_id

      t.timestamps
    end
  end

  def self.down
    drop_table :stops
  end
end

class CreateLocationNames < ActiveRecord::Migration
  def self.up
    create_table :location_names do |t|
      t.string :name
      t.string :location_id

      t.timestamps
    end
  end

  def self.down
    drop_table :location_names
  end
end

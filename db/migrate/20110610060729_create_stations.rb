class CreateStations < ActiveRecord::Migration
  def self.up
    create_table :stations do |t|
      t.string :code
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :stations
  end
end

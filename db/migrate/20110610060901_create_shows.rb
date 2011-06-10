class CreateShows < ActiveRecord::Migration
  def self.up
    create_table :shows do |t|
      t.string :name
      t.integer :DJ
      t.date :schedule
      t.integer :duration
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :shows
  end
end

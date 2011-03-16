class CreateShows < ActiveRecord::Migration
  def self.up
    create_table :shows do |t|
      t.string :venue
      t.string :title
      t.datetime :play_at

      t.timestamps
    end
  end

  def self.down
    drop_table :shows
  end
end

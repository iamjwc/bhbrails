class AddVenueLinkToShow < ActiveRecord::Migration
  def self.up
    add_column :shows, :venue_link, :string
  end

  def self.down
    remove_column :shows, :venue_link
  end
end

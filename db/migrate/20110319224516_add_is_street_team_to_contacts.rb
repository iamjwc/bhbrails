class AddIsStreetTeamToContacts < ActiveRecord::Migration
  def self.up
    add_column :contacts, :is_street_team, :boolean
  end

  def self.down
    remove_column :contacts, :is_street_team
  end
end

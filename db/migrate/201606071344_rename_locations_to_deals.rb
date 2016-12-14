class RenameLocationsToDeals< ActiveRecord::Migration
  def self.up
    rename_table :locations, :deals
  end 
  def self.down
    rename_table :deals, :locations
  end
end
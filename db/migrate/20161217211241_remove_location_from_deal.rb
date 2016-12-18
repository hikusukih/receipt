class RemoveLocationFromDeal < ActiveRecord::Migration
  def change
    remove_column :deals, :location, :string
  end
end

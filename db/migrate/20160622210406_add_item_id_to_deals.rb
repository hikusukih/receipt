class AddItemIdToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :item_id, :integer
  end
end

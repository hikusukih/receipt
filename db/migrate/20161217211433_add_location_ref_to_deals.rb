class AddLocationRefToDeals < ActiveRecord::Migration
  def change
    add_reference :deals, :location, index: true, foreign_key: true
  end
end

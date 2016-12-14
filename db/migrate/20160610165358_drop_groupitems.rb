class DropGroupitems < ActiveRecord::Migration
  def change
  	drop_table :groupitems
  end
end

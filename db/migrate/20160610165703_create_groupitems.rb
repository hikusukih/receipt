class CreateGroupitems < ActiveRecord::Migration
  def change
    create_table :groupitems do |t|
      t.references :item, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

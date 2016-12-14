class CreateGrouptypes < ActiveRecord::Migration
  def change
    create_table :grouptypes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

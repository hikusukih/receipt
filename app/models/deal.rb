class Deal < ActiveRecord::Base
  scope :active, -> () { Deal.select("MAX(created_at), *").group(:item_id).all }
end
class Item < ActiveRecord::Base
	has_many :groups, through: :groupitem

  def bestDeal
    Deal.active.where(item_id: self.id).order(:price).first
  end

  def worstDeal
    Deal.where(item_id: self.id).order(:price).last
  end
end

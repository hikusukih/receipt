class Item < ActiveRecord::Base
	has_many :groups, through: :groupitem
end

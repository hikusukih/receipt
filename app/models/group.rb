class Group < ActiveRecord::Base
	has_many :items, through: :groupitem
end

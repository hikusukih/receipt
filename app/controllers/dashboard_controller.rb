class DashboardController < ApplicationController
  def index
  	@deals = Deal.all
  	@groups = Group.all
  	@items = Item.all
  	@locations = Location.all
  end
end

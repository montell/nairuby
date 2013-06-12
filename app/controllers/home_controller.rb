class HomeController < ApplicationController
  def index
  end
  
  def calendar
  end

  def members
  	@arr_users = []
  	@users = User.find(:all, :order => "name ASC")
  	@users.each do |user|
  		@arr_users << user.id
  	end

  	@members = @arr_users.count


  	@rows = @members/4
  	@rem_rows = @members%4
  end
end

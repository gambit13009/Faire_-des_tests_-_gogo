class ClubsController < ApplicationController
	
	 before_action :authenticate_user!
  def club
  	@users = User.all 
  end
end

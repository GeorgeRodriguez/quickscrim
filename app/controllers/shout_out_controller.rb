class ShoutOutController < ApplicationController

def show
	@user = User.find(params[:id])
	@shoutout = @user.shoutouts.paginate(page: params[:page])
end


end

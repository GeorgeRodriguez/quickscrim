class ShoutOutController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def create
		@shout_out = current_user.shout_out.build(shout_out_params)
		if @shout_out.save
			flash[:success] = "Shout Out Created"
			redirect_to root_url
		else
			render user
		end
	end

	def destroy
	end

	private

	def shout_out_params
		params.require(:shout_out).permit(:content)
	end

end

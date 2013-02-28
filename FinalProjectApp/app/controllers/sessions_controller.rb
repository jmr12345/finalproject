class SessionsController < ApplicationController
  
	def new
	end

	def destroy
		reset_session
		redirect_to_root_url
	end

	def create
		@user = User.find_by_username(params[:username])
		if @user.nil?
			flash[:notice] = "Invalid username"
		else
			session["user_id"] = @user.id
		end
	end
end

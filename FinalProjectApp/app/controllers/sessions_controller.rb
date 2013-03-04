class SessionsController < ApplicationController
  
	def new
	end

	def destroy
		reset_session
		redirect_to root_url	
	end

	def create
    	user = User.find_by_username(params[:username])
		    if user.present?
		      if user.authenticate(params[:password])
		        session[:user_id] = user.id
		        session[:username] = user.username
		        redirect_to "/#{session[:username]}"
		        return
		      end
		    end

	 	redirect_to login_url, notice: "Invalid Entry. Try Again."
  	end
end


 

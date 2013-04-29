class ApplicationController < ActionController::Base
	protect_from_forgery

	def after_sign_in_path_for(user)
		#user.reset_authentication_token!
    	about_profiles_path
  	end
   	protected
	def authorize_user!
	    if user_signed_in?
	      	#render :json => {:data => current_user}
	    else
	      	flash[:notice] = 'You need to sign in first'
	      	redirect_to root_path
	    end
	end
end

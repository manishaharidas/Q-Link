class UsersController < ApplicationController
	#before_filter :authorize_user! , :except => [:index]
	def index

		render :layout => 'login'
	end

	def set_password

	end

	def save_password
		password = params[:user][:password]
		#User.create_password(password)
		@user = current_user

		@user.update_attribute(:encrypted_password ,User.create_password(password))
		redirect_to about_profiles_path
	end
end

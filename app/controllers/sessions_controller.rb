class SessionsController < Devise::SessionsController
	def create
		password = params[:user][:password]
		email = params[:user][:email]
		if password.present?
			p = Digest::MD5.hexdigest(password)
			@user = User.find_by_email_and_encrypted_password(email,p)
			#render :json => {:data => @user.encrypted_password}
			if @user.nil?
				flash[:notice] = 'invalid password or email'
					redirect_to root_path
			#redirect_to about_profiles_path
			else
				#render :json => {:data => current_user }
				sign_in @user
				
				redirect_to about_profiles_path
			end
		else
			flash[:notice] = 'invalid password or email'
			redirect_to root_path
		end	
			#render :json => {:data => user }
	end
end

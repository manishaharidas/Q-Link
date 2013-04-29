class CallbacksController < Devise::OmniauthCallbacksController

    skip_before_filter :verify_authenticity_token, :only => [:google]

    def google
	
        user = User.find_for_open_id(request.env["omniauth.auth"], current_user)
	       
        if user.persisted?
            flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
                sign_in user, :event => :authentication

                user.reset_authentication_token!
                if user.sign_in_count == 1
                    redirect_to set_password_users_path
                else

                    redirect_to about_profiles_path
                end
        else
          kkkkkkkkkkkkkkk
            session["devise.google_data"] = request.env["omniauth.auth"]
	           render :json => {:data => session["devise.google_data"] }
     	      redirect_to new_user_registration_url
        end
    end
end
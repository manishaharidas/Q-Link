class ProfilesController < ApplicationController
	def profile
	end

	def create
		@profile= Profile.create(params[:profile])
		if @profile.save
			flash[:notice] = "Profile Updated"
			flash[:color]= "valid"
			redirect_to profile_form_profiles_path
		else
			redirect_to root_path
		end
	end
end

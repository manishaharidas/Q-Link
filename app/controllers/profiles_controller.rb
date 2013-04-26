class ProfilesController < ApplicationController
	def profile
	end
	def about
	end
	def create
		@profile= Profile.create(params[:profile])
		if @profile.save
			flash[:notice] = "Profile Updated"
			flash[:color]= "valid"
			redirect_to profile_form_profiles_path
		else
			flash[:notice] = "Invalid Entry"
			flash[:color]= 
			redirect_to profile_form_profiles_path
		end
	end
end

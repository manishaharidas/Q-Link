class ProfilesController < ApplicationController
	def profile_form
		
	end
	def about
		@profile=Profile.all
		
	end
	def create
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
	def posts
		@updatedpost=Post.all.reverse
	end
end

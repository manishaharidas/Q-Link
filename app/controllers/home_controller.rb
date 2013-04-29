class HomeController < ApplicationController
	def home
		@updatedpost=Post.find_by_sql("select * from posts order by id DESC limit 5;")
	end
	def create
		@post=Post.create(params[:home])

		if @post.save
			flash[:notice] = "Post Updated"
			flash[:color]= "valid"
			redirect_to home_home_index_path
		else
			flash[:notice] = "Update unsuccessful"
			flash[:color]= "valid"
			redirect_to home_home_index_path
		end
	end
end

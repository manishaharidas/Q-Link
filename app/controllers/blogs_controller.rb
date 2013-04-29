class BlogsController < ApplicationController
	def create 
  @post = Blog.new(params[:blog])
   
    respond_to do |format|
      if @post.save
        format.html 
       end

    end	
 end    

def form_blog
 @posts = Blog.all

  
end	
end

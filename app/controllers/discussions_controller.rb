class DiscussionsController < ApplicationController
def create 
  @post = Discussion.new(params[:discussion])
   
    respond_to do |format|
      if @post.save
        format.html 
       end

    end	
 end    

def form_disc
 @posts = Discussion.all

  
end	
end
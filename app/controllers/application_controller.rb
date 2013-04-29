class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout

  private

  def layout
    # only turn it off for login pages:
    is_a?(Devise::SessionsController) ? false : "application"
    
  end

end

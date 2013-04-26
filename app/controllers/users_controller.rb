class UsersController < ActionController::Base
def index
redirect_to new_user_session_path, :layout=> false

end
end

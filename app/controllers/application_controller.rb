class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	protect_from_forgery with: :null_session
	skip_before_action	:verify_authenticity_token

	def login_check
  	@current_user = nil
  	if !session[:user_id].nil?
    	@current_user = User.find(session[:user_id])
  	else
    	redirect_to "/users/login"
  	end
  end

end

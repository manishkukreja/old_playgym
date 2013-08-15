require Rails.root.to_s+'/lib/authentication'

class ApplicationController < ActionController::Base
  include Playgym::Authentication
  protect_from_forgery
  # def authorize_user
  # 	if user_signed_in? and current_user.admin
  # 		flash[:notice] = "You are logged in as Admin User"
  # 		return "admin"
  # 	elsif user_signed_in?
  # 		flash[:notice] = "You are logged in Normal User"
  # 		return "non_admin"
  # 	else
  # 		 flash[:notice] = "Please sign in before visiting this page"
  # 		 redirect_to new_user_session_path
  # 	end	
  # end

end

module Playgym

	module Authentication

		def user_logged_in?
			if current_user
				return current_user
			else	
				flash[:notice] = "You need to signin before accessing this page"
				redirect_to new_user_session_path
		  end
		end
		  
		def user_admin?
			current_user.admin
		end

	end	
end
module SessionsHelper
# logs in users	
	def log_in(user)
		session[:user_id] = user.id
	end
	#remembers user in a session
	def remember(user)
		user.remember
		cookies.permanent.signed[:user_id] = user.id
		cookies.permanent[:remember_token] = user.remember_token
	end
	#returns the current user if any are logged in
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end
	# if the user is logged in returns true, if not false
	def logged_in?
		!current_user.nil?
	end
	#logs out the current user
	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
end

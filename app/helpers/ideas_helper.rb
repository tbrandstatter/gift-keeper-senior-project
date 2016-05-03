module IdeasHelper

      # Returns the current logged-in user (if any).
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

	def distance_to(end_date)
		years = end_date.year - year
		months = end_date.month - month
		days = end_date.day - day
		if days < 0
			days += 30
			months -= 1
		end
		if months < 0
			months += 12
			years -= 1
		end
		{:years => years, :months => months, :days => days}
	end

end

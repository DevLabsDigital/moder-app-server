class ApplicationController < ActionController::Base
	layout :setup_layout
	before_action :authenticate_user!

	def setup_layout
		if current_user
			"application"
		else
			"signin"
		end
	end

	
end

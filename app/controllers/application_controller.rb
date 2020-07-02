class ApplicationController < ActionController::Base
	include SessionsHelper
	def function
		render html:"time to grow" 
	end
	
end

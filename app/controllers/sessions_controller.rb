class SessionsController < ApplicationController
  def new
  end
  
  def create
  	user_email = params[:session][:email]
  	user = User.find_by(email: user_email)
  	if user && user.authenticate(params[:session][:password])
  		log_in user
  		remember user
  		redirect_to user_url(user)
  	else
  		flash[:danger] = "Email of password is incorrect"
  		render 'new'
  	end
  end
  def destroy
  	log_out if logged_in?
  	redirect_to root_url
  end

end

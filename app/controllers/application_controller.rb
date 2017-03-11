class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def user_signed_in?
  	!session[:user_id].nil?
  end

  def current_consumer
  	if user_signed_in?
  		Consumer.find(session[:user_id])
  	end
  end

  def current_seller
  	if user_signed_in?
  		Seller.find(session[:user_id])
  	end
  end

  def authenticate_user
  	if user_signed_in?
  		redirect_to '/consumersignin'
  	end
  end

end

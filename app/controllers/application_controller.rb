class ApplicationController < ActionController::Base
  protect_from_forgery

  private 

  	def current_car
  		Cart.find(session[:cart_id])
  	rescue ActiveRecord::RecordtNotFound
  		cart = Cart.create
  		session[:cart_id] = cart.id
  	end
end

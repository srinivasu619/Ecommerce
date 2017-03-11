class SellerhandlerController < ApplicationController
  def home
  	@seller = current_seller
    @products = current_seller.products 
  end

  def profile
  	@seller = current_seller
  end

  def new_get
  	
  end

  def new
  	title = params[:title]
  	price = Integer(params[:price])
  	description = params[:description]
  	quantity = Integer(params[:quantity])
  	category = params[:category]
  	current_seller.products.create(title: title,price: price,description: description, quantity: quantity, category: category)
    return redirect_to seller_home_path
  end
end

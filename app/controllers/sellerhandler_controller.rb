class SellerhandlerController < ApplicationController
  def home
  	@seller=current_seller
  end
end

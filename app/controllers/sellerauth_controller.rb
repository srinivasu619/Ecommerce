class SellerauthController < ApplicationController
  def sellersignin_get
  end

  def sellersignin
  	email = params[:email]
  	password = params[:password]
  	seller = Seller.find_by_email(email)
  	if seller
  		if seller.password == password
  			session[:user_id] = seller.id
  			return redirect_to '/seller/home'
  		else
  			flash[:notice] = "Invalid username/password combination"
  			return redirect_to '/sellersignin'
  		end
  	else
  		flash[:notice] = "User email doesn't exist"
  		return redirect_to '/sellersignup'
  	end
  end

  def sellersignup_get
  end

  def sellersignup
  	email = params[:email]
   	password = params[:password]
   	ename = params[:ename]
   	oname = params[:oname]
   	address = params[:address]
   	phoneno = params[:phoneno]
    city = params[:city]
    state = params[:state]
    landmark = params[:landmark]
    pincode = params[:pincode]
   	seller =Seller.find_by_email(email)
   	unless seller
   		seller = Seller.create(email: email, password: password,ownername: oname, enterprisename: ename, localaddress: address,phoneno: phoneno,city: city,state: state,landmark: landmark,pincode: pincode)
   		session[:user_id] = seller.id
   		return redirect_to '/seller/home'
   	else
   		flash[:notice] = "User already exists"
   		return redirect_to '/sellersignup'
   	end
  end

  def logout
    session[:user_id]=nil;
    redirect_to '/'
  end
end
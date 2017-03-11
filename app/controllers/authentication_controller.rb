class AuthenticationController < ApplicationController
  def consumersignin_get
  end
  def consumersignin
  	email = params[:email]
  	password = params[:password]
  	consumer = Consumer.find_by_email(email)
  	if consumer
  		if consumer.password == password
  			session[:user_id] = consumer.id
  			return redirect_to '/'
  		else
  			flash[:notice] = "Invalid username/password combination"
  			return redirect_to '/consumersignin'
  		end
  	else
  		flash[:notice] = "User email doesn't exist"
  		return redirect_to '/consumersignup'
  	end
  end
  def consumersignup_get
  end

  def consumersignup
  	email = params[:email]
   	password = params[:password]
   	cname = params[:cname]
   	localaddress = params[:address]
   	phoneno = params[:phoneno]
   	city = params[:city]
   	state = params[:state]
   	landmark = params[:landmark]
   	pincode = params[:pincode]
   	consumer =Consumer.find_by_email(email)
   	unless consumer
   		consumer = Consumer.create(email: email, password: password, name: cname, localaddress: localaddress,phoneno: phoneno,city: city,state: state,landmark: landmark,pincode: pincode)
   		session[:user_id] = consumer.id
   		return redirect_to '/'
   	else
   		flash[:notice] = "User already exists"
   		return redirect_to '/consumersignup'
   	end
  end

end

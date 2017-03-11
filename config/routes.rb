Rails.application.routes.draw do
  post '/seller/home/newproduct' => 'sellerhandler#new'

  get '/seller/home/newproduct' => 'sellerhandler#new_get'

  get '/seller/home/profile' => 'sellerhandler#profile'

  get '/seller/home' => 'sellerhandler#home'

  get '/sellerlogout'=> 'sellerauth#logout'

  get '/consumerlogout' => 'authentication#logout'

  get '/sellersignin' => 'sellerauth#sellersignin_get'

  post '/sellersignin' => 'sellerauth#sellersignin'

  get '/sellersignup' => 'sellerauth#sellersignup_get'

  post '/sellersignup' => 'sellerauth#sellersignup'

  get '/consumersignin' =>'authentication#consumersignin_get'
  
  post '/consumersignin' =>'authentication#consumersignin'
  
  get '/consumersignup' =>'authentication#consumersignup_get'
  
  post '/consumersignup' =>'authentication#consumersignup'
  
  get '/' => 'home#index'
end

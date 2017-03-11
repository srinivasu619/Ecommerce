Rails.application.routes.draw do
  get '/seller/home' => 'sellerhandler#home'

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

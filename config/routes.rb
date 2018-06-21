Rails.application.routes.draw do
  
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/get_demo' , to: 'users#get_demo', as: :demo_user
  get '/users/get_params/:v1' , to: 'users#get_demo2', as: :demo_user2

  get '/song/html' , to: 'songs#html', as: :song
  get '/song/json' , to: 'songs#json', as: :song2
  


  
  resources :songs
  resources :users
  resources :beta 

end

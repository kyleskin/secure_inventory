Rails.application.routes.draw do
  resources :items

  get '/about' => 'static_pages#about'

  get 'login' => 'sessions#login'
  post 'login' => 'sessions#create'
  delete '/logout',
          to: 'sessions#destroy'

  resources :users,
            path_names: {new: "create account"}

  root 'static_pages#index'

end

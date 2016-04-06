Rails.application.routes.draw do
  resources :items
  root 'static_pages#index'
  get '/about' => 'static_pages#about'

  if current_user do
      root 'items#index', as: 'user'
    end
  end

  get 'login' => 'sessions#login'
  post 'login' => 'sessions#create'
  delete '/logout',
          to: 'sessions#destroy'

  resources :users,
            only: [:new, :create],
            path_names: {new: "create account"}

end

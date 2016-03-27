Rails.application.routes.draw do
  root 'welcome#index'
  get '/aboutus' => 'welcome#aboutus'
end

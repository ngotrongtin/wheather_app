Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'weather/show', to: 'weather#show', as: 'weather'
  root 'welcom#index'
end

Rails.application.routes.draw do
  #get 'home/index'
  root 'home#index' # to make it root, use '#'
  get 'home/about'

  post "/" => 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

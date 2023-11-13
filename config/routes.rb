# http://localhost:3000/about # ADD COMMENT LATER
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # SYNTAX
  # verb '/path', to: 'controller_name#action'

  # get '/', to: 'pages#home'
  root to: 'pages#home'


  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
end

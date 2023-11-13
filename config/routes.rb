# http://localhost:3000/about # ADD COMMENT LATER
Rails.application.routes.draw do

  # The route is made of:
  # 1) HTTP Verb (GET/POST/PATCH/PUT/DELETE)
  # 2) Relative Url Path (/, or /adilson, or /bands)
  # 3) Which controller responds to this request
  # 4) What action of this controller is going to be executed

  # SYNTAX
  # verb '/path', to: 'controller_name#action', as: :prefix_name

  # get '/', to: 'pages#home'
  root to: 'pages#home'


  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
end

# 1st Thing to Do: Think About the Route!!!
# 2nd Thing to Do: Go to the Controller and Code What You Need
# 3rd Thing: Implement the View!

# How HTTP requests work

First, there needs to be a client (laptop with google chrome installed) and a server (rails server, for example).

Second, the client makes an HTTP request that is composed of:
* URL + Path
* Verb (GET/POST/PUT/PATCH/DELETE)
* Headers
* Query Parameters (at the end of the url it would have a?param_name=value)
* Body (ideally present only in PUT, PATCH and POST requests)

This request is received by the server, which after processing the request returns it with a response. This response is often an HTML page, the same HTML page that we see in our browser after accessing http://www.google.com for example.

Remembering that when we send a POST, PATCH or PUT, we send the parameters inside the BODY of the request, instead of sending as Query Parameters.


# How to implement a user action in Rails
* Do the route
* Make the controller and the action that the route refers to
* Make the view

Remembering that a controller that deals with Meal must be called MealsController, and The views of this controller will be in app/views/meals/, and all these views will have the name of the actions (e.g. index) in the correct format for HTML and ruby terms (e.g. index.html.erb).

Today we just had the `PagesController`, dealing with all static pages of our app. The convention for views will follow the same explained above!!

# routes.rb
The syntax for creating a route follows the following format: `verb 'path', to: 'controller#action'`
Here are some examples:
* get 'about', to: 'pages#about'
* get 'houses', to: 'houses#index

We can define a root path (system homepage) by:
* root to: 'controller#action'

And lastly, we also have the route prefixes, which are useful when we are constructing a link (a href="") from Ruby code (link_to):

* get 'about_us', to: 'pages#about', as: 'about'

This allows us to do a "Find Out More" link_to about_path

# Controllers & Instance Variables & Params

**Convention over Configuration!**

Controller always in the plural (e.g. HousesController), and the views folder always with the name of the controller (app/views/houses/) and the action of the controller (e.g. index) with a view of the same name (app/views/houses/index.html.erb)

Remember that if you want a variable defined in the action "x" to be accessible Inside the "x.html.erb" view, you need to declare it as an **instance variable**.

Ex:

* @houses = ['Gryffindor', 'Ravenclaw']

Other than that, every parameter sent by a request is accessible from the params. This params works as a hash, so if the parameter sent was "house_name", You access it in the controller/action (or view) as params[:house_name].


# Views

To run Ruby code inside the view, you need to use icecream brackets.

* <% code will be executed but not printed into the HTML %>
* <%= code will be executed AND printed into the HTML %>


Remembering that in loops, we don't print the loop itself. But we usually print something from the block.

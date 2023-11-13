class PagesController < ApplicationController
  # What is an action?
  # A method defined within a Controller

  # Instance Variable
  # Allows you to share a variable in a controller action
  # with the view of the same name!

  # IMPORTANT!!
  # The instance variable defined within an action
  # IS NOT SHARED with the other actions

  def about
  end

  def contact
  end

  def home
    # ACCESS INFORMATION FROM THE FORM
    # USING THE PARAMS!
    params # LIKE A HASH
    params #=> { house: 'Gryffindor'}
    params[:house] #=> 'Gryffindor'
    @school = 'Hogwarts'
    @houses = ['Gryffindor', "Slytherin", 'Ravenclaw', 'Hufflepuff']

    if params[:house].present?
      @houses = @houses.select do |house_name|
        house_name == params[:house]
      end
    end
  end
end

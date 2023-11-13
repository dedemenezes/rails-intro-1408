class PagesController < ApplicationController
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

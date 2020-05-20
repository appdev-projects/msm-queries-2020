class DirectorsController < ApplicationController
  def francis
    # @the_director = Director.where({ :name => "Francis Ford Coppola" }).at(0)
    
    @the_director = Director.where("name LIKE ?", "%Francis%Coppola%").at(0)

    # get the director's ID number
    francis_id = @the_director.id
    
    # go to the movie table
    # find the rows where the director's ID is in the director_id column
    @the_movies = Movie.where({ :director_id => francis_id })
    
    # count them
    @num_films = @the_movies.count

    render({ :template => "director_templates/coppola.html.erb" })
  end
end
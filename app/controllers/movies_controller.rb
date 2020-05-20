class MoviesController < ApplicationController
  def tdk
    @movie = Movie.where({ :title => "The Dark Knight"}).at(0)

    @num_days = (Time.now.year - @movie.year) * 365

    render({ :template => "movie_templates/dk.html.erb" })
  end
  
  def before2k
    

    render({ :template => "movie_templates/pre2000.html.erb" })
  end
end

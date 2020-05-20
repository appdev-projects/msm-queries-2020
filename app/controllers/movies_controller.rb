class MoviesController < ApplicationController
  def casablanca
    @movie = Movie.where({ :title => "Casablanca"}).at(0)

    @num_years = (Time.now.year - @movie.year)

    render({ :template => "movie_templates/cb.html.erb" })
  end
  
  def before2k
    

    render({ :template => "movie_templates/pre2000.html.erb" })
  end
end

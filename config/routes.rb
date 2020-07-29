Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/movies/:some_id", { :controller => "movies", :action => "details" })
  
  get("/movies/before/:max_year", { :controller => "movies", :action => "oldies" })
  
  get("/movies/after/:min_year", { :controller => "movies", :action => "recent" })
  
  get("/directors/youngest", { :controller => "directors", :action => "last" })
  
  get("/directors/younger_than/:max_age", { :controller => "directors", :action => "youngins" })
  
  get("/directors/older_than/:min_age", { :controller => "directors", :action => "elders" })
  
  get("/directors/:an_id", { :controller => "directors", :action => "bio" })
  
  get("/actors/:the_id", { :controller => "actors", :action => "profile" })

  get("/delete_movie/:toast_id", { :controller => "movies", :action => "destroy" })

  get("/insert_movie", { :controller => "movies", :action => "create" })
end

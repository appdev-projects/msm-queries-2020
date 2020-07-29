Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "list_directors" })
  
  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/movies", { :controller => "movies", :action => "all_movies" })

  get("/movies/:some_id", { :controller => "movies", :action => "details" })
  
  get("/directors/:an_id", { :controller => "directors", :action => "bio" })
  
  get("/actors", { :controller => "actors", :action => "actor_directory" })
  
  get("/actors/:the_id", { :controller => "actors", :action => "profile" })

  get("/delete_movie/:toast_id", { :controller => "movies", :action => "destroy" })

  get("/insert_movie", { :controller => "movies", :action => "create" })

  get("/delete_director/:bye_id", { :controller => "directors", :action => "sayonara" })

  get("/add_director", { :controller => "directors", :action => "welcome" })

  get("/delete_actor/:ciao_id", { :controller => "actors", :action => "toodles" })

  get("/record_actor", { :controller => "actors", :action => "hiii" })
end

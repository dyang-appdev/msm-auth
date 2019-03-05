Rails.application.routes.draw do
  devise_for :users
  # Routes for the Bookmark resource:

  # CREATE
  get("/bookmarks/new", { :controller => "bookmarks", :action => "new_form" })
  post("/create_bookmark", { :controller => "bookmarks", :action => "create_row" })

  # READ
  get("/bookmarks", { :controller => "bookmarks", :action => "index" })
  get("/bookmarks/:id_to_display", { :controller => "bookmarks", :action => "show" })

  # UPDATE
  get("/bookmarks/:prefill_with_id/edit", { :controller => "bookmarks", :action => "edit_form" })
  post("/update_bookmark/:id_to_modify", { :controller => "bookmarks", :action => "update_row" })

  # DELETE
  get("/delete_bookmark/:id_to_remove", { :controller => "bookmarks", :action => "destroy_row" })

  #------------------------------

  # Routes for the Character resource:

  # CREATE
  get("/characters/new", { :controller => "characters", :action => "new_form" })
  get("/create_character", { :controller => "characters", :action => "create_row" })

  # READ
  get("/characters", { :controller => "characters", :action => "index" })
  get("/characters/:id_to_display", { :controller => "characters", :action => "show" })

  # UPDATE
  get("/characters/:prefill_with_id/edit", { :controller => "characters", :action => "edit_form" })
  get("/update_character/:id_to_modify", { :controller => "characters", :action => "update_row" })

  # DELETE
  get("/delete_character/:id_to_remove", { :controller => "characters", :action => "destroy_row" })

  #------------------------------

  # Routes for the Director resource:

  # CREATE
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("/create_director", { :controller => "directors", :action => "create_row" })

  # READ
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:id_to_display", { :controller => "directors", :action => "show" })

  # UPDATE
  get("/directors/:prefill_with_id/edit", { :controller => "directors", :action => "edit_form" })
  get("/update_director/:id_to_modify", { :controller => "directors", :action => "update_row" })

  # DELETE
  get("/delete_director/:id_to_remove", { :controller => "directors", :action => "destroy_row" })

  #------------------------------

  # Routes for the Actor resource:

  # CREATE
  get("/actors/new", { :controller => "actors", :action => "new_form" })
  get("/create_actor", { :controller => "actors", :action => "create_row" })

  # READ
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:id_to_display", { :controller => "actors", :action => "show" })

  # UPDATE
  get("/actors/:prefill_with_id/edit", { :controller => "actors", :action => "edit_form" })
  get("/update_actor/:id_to_modify", { :controller => "actors", :action => "update_row" })

  # DELETE
  get("/delete_actor/:id_to_remove", { :controller => "actors", :action => "destroy_row" })

  #------------------------------

  get("/", { :controller => "movies", :action => "index" })
  # root "movies#index"

  # Routes for the Movie resource:

  get("/movies", { :controller => "movies", :action => "index" })

  # CREATE
  get("/movies/new", { :controller => "movies", :action => "new_form" })
  get("/create_movie", { :controller => "movies", :action => "create_row" })

  # READ
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:id_to_display", { :controller => "movies", :action => "show" })

  # UPDATE
  get("/movies/:prefill_with_id/edit", { :controller => "movies", :action => "edit_form" })
  get("/update_movie/:id_to_modify", { :controller => "movies", :action => "update_row" })

  # DELETE
  get("/delete_movie/:id_to_remove", { :controller => "movies", :action => "destroy_row" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

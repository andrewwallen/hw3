Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  get("/entries", { :controller => "entries", :action => "index"})
  get("/places", { :controller => "places", :action => "index"})
  get("/places/new", { :controller => "places", :action => "new"})
  post("/places", { :controller => "places", :action => "create" })
  get("places/:place_id/entries", { :controller => "entries", :action =>"index"})
  get("/places/:place_id/entries/:id", { :controller =>"entries", :action =>"show"})

end

MoviesApp::Application.routes.draw do

  # Routes for the Theater resource:

  get '/theaters/new', controller: 'theaters', action: 'new'
  post "/theaters", controller: 'theaters', action: 'create'
  get '/theaters', controller: 'theaters', action: 'index'
  get '/theaters/:id', controller: 'theaters', action: 'show'
  get '/theaters/:id/edit', controller: 'theaters', action: 'edit'
  put '/theaters/:id', controller: 'theaters', action: 'update'
  delete '/theaters/:id', controller: 'theaters', action: 'destroy'
  #------------------------------

# Routes for the Movie resource:

 get '/movies/new', controller: 'movies', action: 'new'
 post "/movies", controller: 'movies', action: 'create'
 get "/movies", controller: 'movies', action: 'index'
 get '/movies/:id', controller: 'movies', action: 'show'
 get "/movies/:id/edit", controller: 'movies', action: 'edit'
 put '/movies/:id', controller: 'movies', action: 'update'
 delete '/movies/:id', controller: 'movies', action: 'destroy'

end

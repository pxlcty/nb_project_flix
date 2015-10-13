Rails.application.routes.draw do
	get 'about' => 'movies#about' #Route => Controler# Action
	get 'privacy' => 'movies#privacy'
#	get '/movies', to: redirect('/films')  #If I want to change to films
#	resources :films, as: :movies, controller: :movies  #If I want to change to films
	get '/films', to: redirect('/movies')
	resources :movies # this creates my /movies ?
	root 'movies#index'
	get 'text-m-for-murder' => 'movies#murder'
end

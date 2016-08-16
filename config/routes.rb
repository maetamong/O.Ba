Rails.application.routes.draw do
	root	'bananas#project'
  get	'bananas/photos'
	get	'bananas/photos_user'
  get	'bananas/data'
  get	'bananas/points'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

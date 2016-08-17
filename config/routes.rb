Rails.application.routes.draw do
  root 'users#signup'
  post	'users/signup_complete'
  get	'users/login'
  post	'users/login_complete'
  get	'users/logout_complete'
	get	'bananas/project'
  get	'bananas/photos'
	post 'bananas/photos_complete'
	get 'bananas/photos_donation'
	post	'bananas/photos_donation_complete'
	get	'bananas/photos_user'
  get	'bananas/data'
  get	'bananas/points'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

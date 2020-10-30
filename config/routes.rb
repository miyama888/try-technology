Rails.application.routes.draw do
	namespace :admins do
  		devise_for :admins, :controllers => {
	      sessions: 'admin/sessions',
	      registrations: 'admin/registrations',
	      passwords: 'admin/passwords'
  		}
  	end
  	devise_for :users, :controllers => {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords'
  	}
  root '/top', to: 'users/user#top'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

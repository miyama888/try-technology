Rails.application.routes.draw do
	namespace :admins do
  		devise_for :admins, :controller => {
	      sessions: 'admin_users/sessions',
	      registrations: 'admin_users/registrations',
	      passwords: 'admin_users/passwords'
  		}
  	end
  	devise_for :users, :controllers => {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords'
  	}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

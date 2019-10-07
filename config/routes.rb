Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => redirect('equations/new')
  resources :equations, :only => [:new, :create]
end

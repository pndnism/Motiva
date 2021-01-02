Rails.application.routes.draw do

  devise_scope :user do
    root :to => "devise/sessions#new"
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end

  get 'logins/home'
  get '/top' => "home#top"

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  resources :habit_lists
  resources :habit_records
  resources :project_lists
  resources :todo_lists
  resources :users

  resources :colors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

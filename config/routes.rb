Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
  resources :habit_lists
  resources :habit_records
  resources :project_lists
  resources :todo_lists
  resources :users
  get '/top' => "home#top"
  root to: "home#top"
  resources :colors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

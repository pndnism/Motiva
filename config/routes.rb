Rails.application.routes.draw do

  get 'logins/home'
  get '/top' => "home#top"

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  devise_scope :user do
    root :to => "users/sessions#new"
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end


  resources :project_todos
  resources :projects
  resources :todos
  resources :habits
  resources :categories
  resources :habit_records
  resources :users



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

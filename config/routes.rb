Rails.application.routes.draw do

  get 'logins/home'
  get '/top' => "home#top"




  resources :project_todos
  resources :projects
  resources :todos
  resources :habits
  resources :categories
  resources :habit_records
  resources :users



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

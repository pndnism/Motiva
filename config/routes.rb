Rails.application.routes.draw do
  resources :project_todos
  resources :projects
  resources :todos
  resources :habits
  resources :categories
  resources :habit_records
  get '/top' => "home#top"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

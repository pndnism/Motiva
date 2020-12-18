Rails.application.routes.draw do
  resources :habit_lists
  resources :habit_records
  resources :project_lists
  resources :todo_lists
  get '/top' => "home#top"
  resources :colors
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

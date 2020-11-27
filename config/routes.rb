Rails.application.routes.draw do
  resources :todo_lists
  resources :work_lists
  resources :habit_histories
  resources :habit_lists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

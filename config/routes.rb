Rails.application.routes.draw do
  get 'home/top'
  resources :colors
  resources :work_lists
  resources :habit_records
  resources :habit_lists
  resources :todo_lists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

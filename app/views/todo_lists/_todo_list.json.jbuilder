json.extract! todo_list, :id, :user_id, :personal_todo_id, :todo, :deadline, :project_id, :category, :created_at, :updated_at
json.url todo_list_url(todo_list, format: :json)

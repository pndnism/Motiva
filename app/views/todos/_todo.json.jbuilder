json.extract! todo, :id, :user_id, :personal_todo_id, :todo, :deadline, :category_id, :created_at, :updated_at
json.url todo_url(todo, format: :json)

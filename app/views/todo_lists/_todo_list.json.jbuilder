json.extract! todo_list, :id, :class1, :class2, :todo_no, :project_no, :todo, :deadline, :created_at, :updated_at
json.url todo_list_url(todo_list, format: :json)

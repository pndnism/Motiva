json.extract! project_todo, :id, :project_id, :todo_id, :created_at, :updated_at
json.url project_todo_url(project_todo, format: :json)

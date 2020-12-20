json.extract! project_list, :id, :user_id, :personal_project_id, :project, :created_at, :updated_at
json.url project_list_url(project_list, format: :json)

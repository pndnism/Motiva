json.extract! habit_list, :id, :user_id, :personal_habit_id, :habit, :habituation, :created_at, :updated_at
json.url habit_list_url(habit_list, format: :json)

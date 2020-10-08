json.extract! habit_list, :id, :user_id, :habit_id, :habit, :habit_count, :habitation, :created_at, :updated_at
json.url habit_list_url(habit_list, format: :json)

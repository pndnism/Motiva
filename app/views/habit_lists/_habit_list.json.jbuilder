json.extract! habit_list, :id, :userid, :habit_no, :habit, :count, :donehabit, :created_at, :updated_at
json.url habit_list_url(habit_list, format: :json)

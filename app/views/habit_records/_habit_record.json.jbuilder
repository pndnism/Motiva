json.extract! habit_record, :id, :userid, :habit_no, :habit, :date, :done, :count, :created_at, :updated_at
json.url habit_record_url(habit_record, format: :json)

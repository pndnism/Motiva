class HabitRecord < ApplicationRecord
	belongs_to :habit_list, foreign_key: 'habit_id'
end

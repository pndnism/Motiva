class HabitList < ApplicationRecord
	belongs_to :user
	has_many :habit_records
end

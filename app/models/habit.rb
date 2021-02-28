class Habit < ApplicationRecord
	has_many :habit_records
	belongs_to :user
end

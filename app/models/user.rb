class User < ApplicationRecord
	has_many :habit_lists
	has_many :project_lists
	has_many :todo_lists
end

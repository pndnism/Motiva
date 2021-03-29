class Project < ApplicationRecord
	belongs_to :user
	has_many :todos, throuth: :project_todos
	has_many :project_todos
end

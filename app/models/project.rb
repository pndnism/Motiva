class Project < ApplicationRecord
	belongs_to :user
	has_many :todos, through: :project_todos
	has_many :project_todos
end

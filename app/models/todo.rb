class Todo < ApplicationRecord
	belongs_to :user
	has_many :project_todos
	belongs_to :category
end

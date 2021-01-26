class ProjectTodo < ApplicationRecord
	belongs_to :project
	belongs_to :todo
end

class CreateProjectTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :project_todos do |t|
      t.bigint :project_id
      t.bigint :todo_id

      t.timestamps
    end
  end
end

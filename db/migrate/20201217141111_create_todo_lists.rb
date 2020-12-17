class CreateTodoLists < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_lists do |t|
      t.bigint :user_id
      t.bigint :personal_todo_id
      t.string :todo
      t.date :deadline
      t.bigint :project_id
      t.string :category

      t.timestamps
    end
  end
end

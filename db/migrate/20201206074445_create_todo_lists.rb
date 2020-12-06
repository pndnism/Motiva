class CreateTodoLists < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_lists do |t|
      t.string :class1
      t.string :class2
      t.integer :todo_no
      t.integer :project_no
      t.string :todo
      t.date :deadline

      t.timestamps
    end
  end
end

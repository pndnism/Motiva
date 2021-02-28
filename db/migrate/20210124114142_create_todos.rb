class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.bigint :user_id
      t.bigint :personal_todo_id
      t.string :todo
      t.date :deadline
      t.bigint :category_id

      t.timestamps
    end
  end
end

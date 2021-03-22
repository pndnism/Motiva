class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.bigint :user_id
      t.string :todo_content
      t.date :deadline
      t.bigint :category_id
      t.integer :done

      t.timestamps
    end
  end
end

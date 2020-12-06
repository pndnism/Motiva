class TodoList < ActiveRecord::Migration[6.0]
  def change
  	drop_table :todo_lists
  end
end

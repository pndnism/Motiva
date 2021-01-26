class DropHabitLists < ActiveRecord::Migration[6.0]
  def change
  	drop_table :habit_lists
  end
end

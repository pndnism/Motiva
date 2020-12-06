class CreateHabitLists < ActiveRecord::Migration[6.0]
  def change
    create_table :habit_lists do |t|
      t.integer :userid
      t.integer :habit_no
      t.string :habit
      t.integer :count
      t.integer :donehabit

      t.timestamps
    end
  end
end

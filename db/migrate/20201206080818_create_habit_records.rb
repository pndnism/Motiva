class CreateHabitRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :habit_records do |t|
      t.integer :userid
      t.integer :habit_no
      t.string :habit
      t.date :date
      t.integer :done
      t.integer :count

      t.timestamps
    end
  end
end

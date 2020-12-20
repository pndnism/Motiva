class CreateHabitLists < ActiveRecord::Migration[6.0]
  def change
    create_table :habit_lists do |t|
      t.bigint :user_id
      t.bigint :personal_habit_id
      t.string :habit
      t.integer :habituation

      t.timestamps
    end
  end
end

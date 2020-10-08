class CreateHabitLists < ActiveRecord::Migration[6.0]
  def change
    create_table :habit_lists do |t|
      t.integer :user_id
      t.integer :habit_id
      t.string :habit
      t.integer :habit_count
      t.boolean :habitation, default:false, null:false

      t.timestamps
    end
  end
end

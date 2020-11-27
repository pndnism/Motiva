class CreateHabitLists < ActiveRecord::Migration[6.0]
  def change
    create_table :habit_lists do |t|

      t.timestamps
    end
  end
end

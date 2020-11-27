class CreateHabitHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :habit_histories do |t|

      t.timestamps
    end
  end
end

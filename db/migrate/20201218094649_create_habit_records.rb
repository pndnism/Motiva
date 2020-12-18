class CreateHabitRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :habit_records do |t|
      t.bigint :habit_id
      t.date :date
      t.integer :done
      t.bigint :count

      t.timestamps
    end
  end
end

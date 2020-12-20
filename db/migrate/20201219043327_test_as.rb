class TestAs < ActiveRecord::Migration[6.0]
  def change
    create_table :test_as do |t|
      t.bigint :user_id
      t.bigint :personal_habit_id
      t.string :habit
      t.integer :habituation

      t.timestamps
    end
  end
end

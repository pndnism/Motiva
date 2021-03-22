class CreateHabits < ActiveRecord::Migration[6.0]
  def change
    create_table :habits do |t|
      t.bigint :user_id
      t.string :habit
      t.integer :habituation

      t.timestamps
    end
  end
end

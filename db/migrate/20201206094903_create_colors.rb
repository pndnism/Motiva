class CreateColors < ActiveRecord::Migration[6.0]
  def change
    create_table :colors do |t|
      t.string :category
      t.string :color

      t.timestamps
    end
  end
end
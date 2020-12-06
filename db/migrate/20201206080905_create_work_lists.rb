class CreateWorkLists < ActiveRecord::Migration[6.0]
  def change
    create_table :work_lists do |t|
      t.integer :project_no
      t.string :project

      t.timestamps
    end
  end
end

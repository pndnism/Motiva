class CreateProjectLists < ActiveRecord::Migration[6.0]
  def change
    create_table :project_lists do |t|
      t.bigint :user_id
      t.bigint :personal_project_id
      t.string :project

      t.timestamps
    end
  end
end

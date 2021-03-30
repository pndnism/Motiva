class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.bigint :user_id
      t.string :project_content
      t.integer :closed

      t.timestamps
    end
  end
end

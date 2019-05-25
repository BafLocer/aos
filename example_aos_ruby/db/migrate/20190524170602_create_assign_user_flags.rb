class CreateAssignUserFlags < ActiveRecord::Migration[5.2]
  def change
    create_table :assign_user_flags do |t|
      t.integer :userid, :limit => 8, null: false
      t.integer :assignment, :limit => 8, null: false
      t.integer :locked, :limit => 8, null: false
      t.integer :mailed, null: false
      t.integer :extensionduedate, :limit => 8, null: false
      t.string :workflowstate
      t.integer :allocatedmarker, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

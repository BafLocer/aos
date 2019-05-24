class CreateAssignUserFlags < ActiveRecord::Migration[5.2]
  def change
    create_table :assign_user_flags do |t|
      t.bigint :userid
      t.bigint :assignment
      t.bigint :locked
      t.integer :mailed
      t.bigint :extensionduedate
      t.string :workflowstate
      t.bigint :allocatedmarker

      t.timestamps
    end
  end
end

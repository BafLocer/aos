class CreateAssignfeedbackFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :assignfeedback_files do |t|
      t.integer :assignment, :limit => 8, null: false
      t.integer :grade, :limit => 8, null: false
      t.integer :numfiles, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

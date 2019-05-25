class CreateAssignfeedbackFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :assignfeedback_files do |t|
      t.bigint :assignment
      t.bigint :grade
      t.bigint :numfiles

      t.timestamps
    end
  end
end

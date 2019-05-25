class CreateAssignfeedbackEditpdfQueues < ActiveRecord::Migration[5.2]
  def change
    create_table :assignfeedback_editpdf_queues do |t|
      t.integer :submissionid, :limit => 8, null: false
      t.integer :submissionattempt, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

class CreateAssignfeedbackEditpdfQueues < ActiveRecord::Migration[5.2]
  def change
    create_table :assignfeedback_editpdf_queues do |t|
      t.bigint :submissionid
      t.bigint :submissionattempt

      t.timestamps
    end
  end
end

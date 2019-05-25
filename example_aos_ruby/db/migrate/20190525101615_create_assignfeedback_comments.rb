class CreateAssignfeedbackComments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignfeedback_comments do |t|
      t.bigint :assignment
      t.bigint :grade
      t.text :commenttext
      t.integer :commentformat

      t.timestamps
    end
  end
end

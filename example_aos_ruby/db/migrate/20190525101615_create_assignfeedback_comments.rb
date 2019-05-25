class CreateAssignfeedbackComments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignfeedback_comments do |t|
      t.integer :assignment, :limit => 8, null: false
      t.integer :grade, :limit => 8, null: false
      t.text :commenttext
      t.integer :commentformat, , :limit => 2, null: false

      t.timestamps null: false
    end
  end
end

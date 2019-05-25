class CreateAssignfeedbackEditpdfQuicks < ActiveRecord::Migration[5.2]
  def change
    create_table :assignfeedback_editpdf_quicks do |t|
      t.integer :userid, :limit => 8, null: false
      t.text :rawtext, null: false
      t.integer :width, :limit => 8, null: false
      t.string :colour

      t.timestamps null: false
    end
  end
end

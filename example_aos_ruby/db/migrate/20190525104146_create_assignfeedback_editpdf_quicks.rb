class CreateAssignfeedbackEditpdfQuicks < ActiveRecord::Migration[5.2]
  def change
    create_table :assignfeedback_editpdf_quicks do |t|
      t.bigint :userid
      t.text :rawtext
      t.bigint :width
      t.string :colour

      t.timestamps
    end
  end
end

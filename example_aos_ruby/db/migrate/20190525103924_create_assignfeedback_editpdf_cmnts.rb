class CreateAssignfeedbackEditpdfCmnts < ActiveRecord::Migration[5.2]
  def change
    create_table :assignfeedback_editpdf_cmnts do |t|
      t.bigint :gradeid
      t.bigint :x
      t.bigint :y
      t.bigint :width
      t.text :rawtext
      t.bigint :pageno
      t.string :colour
      t.integer :draft

      t.timestamps
    end
  end
end

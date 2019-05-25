class CreateAssignfeedbackEditpdfAnnots < ActiveRecord::Migration[5.2]
  def change
    create_table :assignfeedback_editpdf_annots do |t|
      t.bigint :gradeid
      t.bigint :pageno
      t.bigint :x
      t.bigint :y
      t.bigint :endx
      t.bigint :endy
      t.text :path
      t.string :type
      t.string :colour
      t.integer :draft

      t.timestamps
    end
  end
end

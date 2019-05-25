class CreateAssignfeedbackEditpdfCmnts < ActiveRecord::Migration[5.2]
  def change
    create_table :assignfeedback_editpdf_cmnts do |t|
      t.integer :gradeid, :limit => 8, null: false
      t.integer :x, :limit => 8
      t.integer :y, :limit => 8
      t.integer :width, :limit => 8
      t.text :rawtext
      t.integer :pageno, :limit => 8, null: false
      t.string :colour
      t.integer :draft, :limit => 2, null: false

      t.timestamps null: false
    end
  end
end

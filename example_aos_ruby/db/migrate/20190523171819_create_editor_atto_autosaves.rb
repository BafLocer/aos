class CreateEditorAttoAutosaves < ActiveRecord::Migration[5.2]
  def change
    create_table :editor_atto_autosaves do |t|
      t.string :elementid
      t.integer :contextid
      t.string :pagehash
      t.integer :userid
      t.text :drafttext
      t.integer :draftid
      t.string :pageinstance
      t.integer :timemodified

      t.timestamps
    end
  end
end

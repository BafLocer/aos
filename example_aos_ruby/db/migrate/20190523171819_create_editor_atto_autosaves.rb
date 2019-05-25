class CreateEditorAttoAutosaves < ActiveRecord::Migration[5.2]
  def change
    create_table :editor_atto_autosaves do |t|
      t.string :elementid, null: false
      t.integer :contextid, :limit => 8, null: false
      t.string :pagehash, null: false
      t.integer :userid, :limit => 8, null: false
      t.text :drafttext, null: false
      t.integer :draftid, :limit => 8
      t.string :pageinstance, null: false
      t.integer :timemodified, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

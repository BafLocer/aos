class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :contextid, :limit => 8, null: false
      t.string :component
      t.string :commentarea, null: false
      t.integer :itemid, :limit => 8, null: false
      t.text :content, null: false
      t.integer :format, :limit => 2, null: false
      t.integer :userid, :limit => 8, null: false
      t.integer :timecreated, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

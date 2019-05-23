class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :contextid
      t.string :component
      t.string :commentarea
      t.integer :itemid
      t.text :content
      t.integer :format
      t.integer :userid
      t.integer :timecreated

      t.timestamps
    end
  end
end

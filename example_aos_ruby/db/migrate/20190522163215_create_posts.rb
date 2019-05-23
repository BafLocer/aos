class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :module, null: false
      t.integer :userid, null: false
      t.integer :courseid, null: false
      t.integer :groupid, null: false
      t.integer :moduleid, null: false
      t.integer :coursemoduleid, null: false
      t.string :subject, null: false
      t.text :summary
      t.text :content
      t.string :uniquehash, null: false
      t.integer :rating, null: false
      t.integer :format, null: false
      t.integer :summaryformat, null: false
      t.string :attachment
      t.string :publishstate, null: false
      t.integer :lastmodified, null: false
      t.integer :created, null: false
      t.integer :usermodified
      t.references :blog_association, foreign_key: true

      t.timestamps null: false
    end
  end
end

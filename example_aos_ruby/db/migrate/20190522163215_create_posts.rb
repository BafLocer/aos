class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :module, null: false
      t.integer :userid, :limit => 8, null: false
      t.integer :courseid, :limit => 8, null: false
      t.integer :groupid, :limit => 8, null: false
      t.integer :moduleid, :limit => 8, null: false
      t.integer :coursemoduleid, :limit => 8, null: false
      t.string :subject, null: false
      t.text :summary
      t.text :content
      t.string :uniquehash, null: false
      t.integer :rating, :limit => 8, null: false
      t.integer :format, :limit => 8, null: false
      t.integer :summaryformat, :limit => 2, null: false
      t.string :attachment, :limit => 8
      t.string :publishstate, null: false
      t.integer :lastmodified, :limit => 8, null: false
      t.integer :created, :limit => 8, null: false
      t.integer :usermodified, :limit => 8
      t.references :blog_association, foreign_key: true

      t.timestamps null: false
    end
  end
end

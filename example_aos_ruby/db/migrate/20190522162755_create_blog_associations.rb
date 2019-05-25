class CreateBlogAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_associations do |t|
      t.integer :contextid, :limit => 8, null: false
      t.integer :blogid, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

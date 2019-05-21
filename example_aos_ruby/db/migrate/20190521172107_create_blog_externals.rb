class CreateBlogExternals < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_externals, :id => false do |t|
      t.integer :id, :limit => 5, null: false # bigint min 8 max 8 388 607
      t.integer :userid, :limit => 5, null: false
      t.string :name, :limit => 255, null: false
      t.text :description
      t.text :url, null: false
      t.string :filtertags, :limit => 255
      t.integer :failedlastsync, :limit => 2, null: false # smallint 2 to 32 767
      t.integer :timemodified, :limit => 5
      t.integer :timefetched, :limit => 5, null: false

      t.timestamps
    end
  end
end

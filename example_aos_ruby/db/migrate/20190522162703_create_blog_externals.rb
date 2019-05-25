class CreateBlogExternals < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_externals do |t|
      t.integer :userid, :limit => 8, null: false
      t.string :name, null: false
      t.text :description
      t.text :url, null: false
      t.string :filtertags
      t.integer :failedlastsync, :limit => 2, null: false
      t.integer :timemodified, :limit => 8
      t.integer :timefetched, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

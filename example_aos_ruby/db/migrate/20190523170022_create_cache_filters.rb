class CreateCacheFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :cache_filters do |t|
      t.string :filter, null: false
      t.integer :version, :limit => 8, null: false
      t.string :md5key, null: false
      t.text :rawtext, null: false
      t.integer :timemodified, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

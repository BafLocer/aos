class CreateCacheFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :cache_filters do |t|
      t.string :filter
      t.integer :version
      t.string :md5key
      t.text :rawtext
      t.integer :timemodified

      t.timestamps
    end
  end
end

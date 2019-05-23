class CreateCacheFlags < ActiveRecord::Migration[5.2]
  def change
    create_table :cache_flags do |t|
      t.string :flagtype
      t.string :name
      t.integer :timemodified
      t.text :value
      t.integer :expiry

      t.timestamps
    end
  end
end

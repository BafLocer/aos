class CreateCacheFlags < ActiveRecord::Migration[5.2]
  def change
    create_table :cache_flags do |t|
      t.string :flagtype, null: false
      t.string :name, null: false
      t.integer :timemodified, :limit => 8, null: false
      t.text :value, null: false
      t.integer :expiry, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

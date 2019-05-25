class CreateAnalyticsUsedFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_used_files do |t|
      t.integer :modelid, :limit => 8, null: false
      t.integer :fileid, :limit => 8, null: false
      t.string :action, null: false
      t.inetger :time, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

class CreateAnalyticsUsedFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_used_files do |t|
      t.bigint :modelid
      t.bigint :fileid
      t.string :action
      t.bigint :time

      t.timestamps
    end
  end
end

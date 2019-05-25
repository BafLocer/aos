class CreateAnalyticsUsedAnalysables < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_used_analysables do |t|
      t.integer :modelid, :limit => 8, null: false
      t.string :action, null: false
      t.integer :analysableid, :limit => 8, null: false
      t.integer :timeanalysed, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

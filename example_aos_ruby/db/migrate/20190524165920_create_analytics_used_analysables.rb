class CreateAnalyticsUsedAnalysables < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_used_analysables do |t|
      t.bigint :modelid
      t.string :action
      t.bigint :analysableid
      t.bigint :timeanalysed

      t.timestamps
    end
  end
end

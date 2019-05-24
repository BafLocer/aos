class CreateAnalyticsModelsLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_models_logs do |t|
      t.bigint :modelid
      t.bigint :version
      t.string :target
      t.text :indicators
      t.string :timespliting
      t.numeric :score
      t.text :info
      t.text :dir
      t.bigint :timecreated
      t.bigint :usermodified

      t.timestamps
    end
  end
end

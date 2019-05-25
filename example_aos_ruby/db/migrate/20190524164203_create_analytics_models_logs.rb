class CreateAnalyticsModelsLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_models_logs do |t|
      t.integer :modelid, :limit => 8, null: false
      t.integer :version, :limit => 8, null: false
      t.string :target, null: false
      t.text :indicators, null: false
      t.string :timespliting
      t.integer :score, null: false
      t.text :info
      t.text :dir, null: false
      t.integer :timecreated, :limit => 8, null: false
      t.integer :usermodified, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

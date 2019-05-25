class CreateAnalyticsPredictSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_predict_samples do |t|
      t.integer :modelid, :limit => 8, null: false
      t.integer :analysableid, :limit => 8, null: false
      t.string :timespliting, null: false
      t.integer :rangeindex, :limit => 8, null: false
      t.text :sampleids, null: false
      t.integer :timecreated, :limit => 8, null: false
      t.integer :timemodified, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

class CreateAnalyticsPredictSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_predict_samples do |t|
      t.bigint :modelid
      t.bigint :analysableid
      t.string :timespliting
      t.bigint :rangeindex
      t.text :sampleids
      t.bigint :timecreated
      t.bigint :timemodified

      t.timestamps
    end
  end
end

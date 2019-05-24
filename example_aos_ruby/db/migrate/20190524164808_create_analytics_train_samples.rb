class CreateAnalyticsTrainSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_train_samples do |t|
      t.bigint :modelid
      t.bigint :analysableid
      t.string :timespliting
      t.bigint :fileid
      t.text :sampleids
      t.bigint :timecreated

      t.timestamps
    end
  end
end

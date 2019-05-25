class CreateAnalyticsTrainSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_train_samples do |t|
      t.integer :modelid, :limit => 8, null: false
      t.integer :analysableid, :limit => 8, null: false
      t.string :timespliting, null: false
      t.integer :fileid, :limit => 8, null: false
      t.text :sampleids, null: false
      t.integer :timecreated, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

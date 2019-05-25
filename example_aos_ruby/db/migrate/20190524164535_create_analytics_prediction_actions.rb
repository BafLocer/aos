class CreateAnalyticsPredictionActions < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_prediction_actions do |t|
      t.integer :predictionid, :limit => 8, null: false
      t.integer :userid, :limit => 8, null: false
      t.string :actionname, null: false
      t.integer :timecreated, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

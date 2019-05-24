class CreateAnalyticsPredictionActions < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_prediction_actions do |t|
      t.bigint :predictionid
      t.bigint :userid
      t.string :actionname
      t.bigint :timecreated

      t.timestamps
    end
  end
end

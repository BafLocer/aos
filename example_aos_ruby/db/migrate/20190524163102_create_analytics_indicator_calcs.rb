class CreateAnalyticsIndicatorCalcs < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_indicator_calcs do |t|
      t.integer :starttime
      t.integer :endtime
      t.integer :contextid
      t.string :sampleorign
      t.integer :sampleid
      t.string :indicator
      t.numeric :value
      t.integer :timecreated

      t.timestamps
    end
  end
end

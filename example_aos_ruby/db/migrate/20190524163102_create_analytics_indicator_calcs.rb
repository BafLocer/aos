class CreateAnalyticsIndicatorCalcs < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics_indicator_calcs do |t|
      t.integer :starttime, :limit => 8, null: false
      t.integer :endtime, :limit => 8, null: false
      t.integer :contextid, :limit => 8, null: false
      t.string :sampleorign, null: false
      t.integer :sampleid, :limit => 8, null: false
      t.string :indicator, null: false
      t.integer :value, :precision => 2
      t.integer :timecreated, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

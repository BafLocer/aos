class CreateAssignmentUpgrades < ActiveRecord::Migration[5.2]
  def change
    create_table :assignment_upgrades do |t|
      t.integer :oldcmid, :limit => 8, null: false
      t.integer :oldinstance, :limit => 8, null: false
      t.integer :newcmid, :limit => 8, null: false
      t.integer :newinstance, :limit => 8, null: false
      t.integer :timecreated, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

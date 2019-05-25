class CreateAssignmentUpgrades < ActiveRecord::Migration[5.2]
  def change
    create_table :assignment_upgrades do |t|
      t.bigint :oldcmid
      t.bigint :oldinstance
      t.bigint :newcmid
      t.bigint :newinstance
      t.bigint :timecreated

      t.timestamps
    end
  end
end

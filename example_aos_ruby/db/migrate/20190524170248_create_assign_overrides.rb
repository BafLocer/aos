class CreateAssignOverrides < ActiveRecord::Migration[5.2]
  def change
    create_table :assign_overrides do |t|
      t.integer :assignid, :limit => 8, null: false
      t.integer :groupid, :limit => 8
      t.integer :userid, :limit => 8
      t.integer :sortorder, :limit => 8
      t.integer :allowsubmissionsfromdate, :limit => 8
      t.integer :duedate, :limit => 8
      t.integer :cutoffdate, :limit => 8

      t.timestamps null: false
    end
  end
end

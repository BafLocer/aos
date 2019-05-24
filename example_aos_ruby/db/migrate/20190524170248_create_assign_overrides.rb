class CreateAssignOverrides < ActiveRecord::Migration[5.2]
  def change
    create_table :assign_overrides do |t|
      t.bigint :assignid
      t.bigint :groupid
      t.bigint :userid
      t.bigint :sortorder
      t.bigint :allowsubmissionsfromdate
      t.bigint :duedate
      t.bigint :cutoffdate

      t.timestamps
    end
  end
end

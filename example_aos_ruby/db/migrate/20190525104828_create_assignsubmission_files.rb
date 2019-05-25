class CreateAssignsubmissionFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :assignsubmission_files do |t|
      t.bigint :assignment
      t.bigint :submission
      t.bigint :numfiles

      t.timestamps
    end
  end
end

class CreateAssignsubmissionFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :assignsubmission_files do |t|
      t.integer :assignment, :limit => 8, null: false
      t.integer :submission, :limit => 8, null: false
      t.integer :numfiles, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

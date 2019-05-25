class CreateAssignmentSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :assignment_submissions do |t|
      t.integer :assignment, :limit => 8, null: false
      t.integer :userid, :limit => 8, null: false
      t.integer :timecreated, :limit => 8, null: false
      t.integer :timemodified, :limit => 8, null: false
      t.integer :numfiles, :limit => 8, null: false
      t.text :data1
      t.text :data2
      t.integer :grade, :limit => 8, null: false
      t.text :submissioncomment, null: false
      t.integer :format, :limit => 2, null: false
      t.integer :teacher, :limit => 8, null: false
      t.integer :timemarked, :limit => 8, null: false
      t.integer :mailed, :limit => 2, null: false

      t.timestamps null: false
    end
  end
end

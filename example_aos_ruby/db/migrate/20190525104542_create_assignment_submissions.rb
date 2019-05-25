class CreateAssignmentSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :assignment_submissions do |t|
      t.bigint :assignment
      t.bigint :userid
      t.bigint :timecreated
      t.bigint :timemodified
      t.bigint :numfiles
      t.text :data1
      t.text :data2
      t.bigint :grade
      t.text :submissioncomment
      t.integer :format
      t.bigint :teacher
      t.bigint :timemarked
      t.integer :mailed

      t.timestamps
    end
  end
end

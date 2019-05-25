class CreateAssignUserMappings < ActiveRecord::Migration[5.2]
  def change
    create_table :assign_user_mappings do |t|
      t.integer :assignment, :limit => 8, null: false
      t.integer :userid, :limit => 8, null: false

      t.timestamps null: false
    end
  end
end

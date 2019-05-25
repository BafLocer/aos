class CreateAssignUserMappings < ActiveRecord::Migration[5.2]
  def change
    create_table :assign_user_mappings do |t|
      t.bigint :assignment
      t.bigint :userid

      t.timestamps
    end
  end
end

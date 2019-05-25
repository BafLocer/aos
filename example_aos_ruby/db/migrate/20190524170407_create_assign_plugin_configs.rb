class CreateAssignPluginConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :assign_plugin_configs do |t|
      t.integer :assignment, :limit => 8, null: false
      t.string :plugin, null: false
      t.string :subtype, null: false
      t.string :name, null: false
      t.text :value

      t.timestamps null: false
    end
  end
end

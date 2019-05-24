class CreateAssignPluginConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :assign_plugin_configs do |t|
      t.bigint :assignment
      t.string :plugin
      t.string :subtype
      t.string :name
      t.text :value

      t.timestamps
    end
  end
end

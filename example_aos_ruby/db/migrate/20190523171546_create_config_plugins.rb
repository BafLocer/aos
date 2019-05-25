class CreateConfigPlugins < ActiveRecord::Migration[5.2]
  def change
    create_table :config_plugins do |t|
      t.string :plugin, null: false
      t.string :name, null: false
      t.text :value, null: false

      t.timestamps null: false
    end
  end
end

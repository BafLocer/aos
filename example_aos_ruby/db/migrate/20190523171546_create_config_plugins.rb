class CreateConfigPlugins < ActiveRecord::Migration[5.2]
  def change
    create_table :config_plugins do |t|
      t.string :plugin
      t.string :name
      t.text :value

      t.timestamps
    end
  end
end

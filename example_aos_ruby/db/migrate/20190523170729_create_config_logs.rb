class CreateConfigLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :config_logs do |t|
      t.integer :userid
      t.integer :timemodified
      t.string :plugin
      t.string :name
      t.text :value
      t.text :oldvalue

      t.timestamps
    end
  end
end

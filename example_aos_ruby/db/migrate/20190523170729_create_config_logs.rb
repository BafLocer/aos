class CreateConfigLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :config_logs do |t|
      t.integer :userid, :limit => 8, null: false
      t.integer :timemodified, :limit => 8, null: false
      t.string :plugin
      t.string :name, null: false
      t.text :value
      t.text :oldvalue

      t.timestamps null: false
    end
  end
end

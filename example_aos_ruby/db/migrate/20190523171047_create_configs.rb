class CreateConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :configs do |t|
      t.string :name, null: false
      t.text :value, null: false

      t.timestamps null: false
    end
  end
end

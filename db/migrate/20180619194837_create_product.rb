class CreateProduct < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.text :description, null: true

      t.references :stage, index: true
      t.references :supply_chain, index: true

      t.timestamps
    end
  end
end

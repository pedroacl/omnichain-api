class CreateStage < ActiveRecord::Migration[5.1]
  def change
    create_table :stages do |t|
      t.string :name
      t.string :address
      t.text :description
      t.references :supply_chain, index: true

      t.timestamps
    end
  end
end

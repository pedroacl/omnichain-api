class CreateSupplyChain < ActiveRecord::Migration[5.1]
  def change
    create_table :supply_chains do |t|
      t.string :name

      t.timestamps
    end
  end
end

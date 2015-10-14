class CreateStockCalculations < ActiveRecord::Migration
  def change
    create_table :stock_calculations do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.decimal :percentage
      t.integer :years

      t.timestamps null: false
    end
  end
end

class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :customer
      t.string :description
      t.decimal :price
      t.integer :quantity
      t.string :address
      t.string :supplier
      t.decimal :total

      t.timestamps null: false
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :serial_number
      t.date :date_ordered
      t.date :date_received
      t.date :date_invoiced
      t.string :vendor_invoice
      t.string :scc_invoice
      t.decimal :quantity
      t.decimal :dollar_amount
      t.integer :warranty_years
      t.integer :warranty_days
      t.integer :item
      t.text :comments

      t.timestamps
    end
  end
end

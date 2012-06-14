class AddColumnToProducts < ActiveRecord::Migration
  def up
    add_column :products, :department, :string
  	add_column :products, :vendor_id, :integer
    add_column :products, :customer_id, :integer
    add_column :products, :category_id, :integer
  	
  	add_index "products", ["category_id"], :name => "index_products_on_category_id"
  	add_index "products", ["customer_id"], :name => "index_products_on_customer_id"
	add_index "products", ["vendor_id"], :name => "index_products_on_vendor_id"
  end
end

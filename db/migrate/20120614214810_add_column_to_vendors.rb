class AddColumnToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :status_id, :integer
  end
end

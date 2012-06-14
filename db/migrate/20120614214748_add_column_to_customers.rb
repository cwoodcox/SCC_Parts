class AddColumnToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :status_id, :integer
  end
end

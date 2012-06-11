class Product < ActiveRecord::Base
  attr_accessible :comments, :date_invoiced, :date_ordered, :date_received, :dollar_amount, :item, :name, :quantity, :scc_invoice, :serial_number, :vendor_invoice, :warranty_days, :warranty_years
  
  belongs_to :customer
  belongs_to :vendor
  belongs_to :category
  
end

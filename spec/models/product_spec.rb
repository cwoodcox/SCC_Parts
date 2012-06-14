require 'spec_helper'

describe Product do
  pending "add some examples to (or delete) #{__FILE__}"
end
# == Schema Information
#
# Table name: products
#
#  id             :integer(4)      not null, primary key
#  name           :string(255)
#  serial_number  :string(255)
#  date_ordered   :date
#  date_received  :date
#  date_invoiced  :date
#  vendor_invoice :string(255)
#  scc_invoice    :string(255)
#  quantity       :integer(10)
#  dollar_amount  :integer(10)
#  warranty_years :integer(4)
#  warranty_days  :integer(4)
#  item           :integer(4)
#  comments       :text
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#  vendor_id      :integer(4)
#  customer_id    :integer(4)
#  category_id    :integer(4)
#


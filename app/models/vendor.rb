class Vendor < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :contact, :email, :name, :phone, :state, :vendor_code, :zip_code

  validates :name, :presence => true  
  
  has_many :products
  
  belongs_to :status
  
end
# == Schema Information
#
# Table name: vendors
#
#  id          :integer(4)      not null, primary key
#  vendor_code :string(255)
#  name        :string(255)
#  address1    :string(255)
#  address2    :string(255)
#  city        :string(255)
#  state       :string(255)
#  zip_code    :string(255)
#  phone       :string(255)
#  contact     :string(255)
#  email       :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  status_id   :integer(4)
#


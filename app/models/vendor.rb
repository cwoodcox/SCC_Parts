class Vendor < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :contact, :email, :name, :phone, :state, :vendor_code, :zip_code
  
  has_many :products
  
  belongs_to :status
  
end

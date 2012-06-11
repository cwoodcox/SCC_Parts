class Customer < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :contact, :customer_code, :email, :name, :phone, :state, :zip_code
  
  has_many :products
  
  belongs_to :status
  
end

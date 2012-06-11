class User < ActiveRecord::Base
  attr_accessible :administrator,  :email_address, :maintain_parts, :name, :state
end

class Status < ActiveRecord::Base
  attr_accessible :name
end
# == Schema Information
#
# Table name: statuses
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


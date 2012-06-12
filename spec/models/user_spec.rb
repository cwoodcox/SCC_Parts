require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
# == Schema Information
#
# Table name: users
#
#  id                        :integer(4)      not null, primary key
#  name                      :string(255)
#  email_address             :string(255)
#  maintain_parts            :boolean(1)
#  administrator             :boolean(1)
#  crypted_password          :string(255)
#  salt                      :string(255)
#  remember_token            :string(255)
#  remember_token_expires_at :datetime
#  state                     :string(255)
#  key_timestamp             :datetime
#  created_at                :datetime        not null
#  updated_at                :datetime        not null
#


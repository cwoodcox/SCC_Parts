require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :email_address => "MyString",
      :maintain_parts => false,
      :administrator => false,
      :crypted_password => "MyString",
      :salt => "MyString",
      :remember_token => "MyString",
      :state => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_email_address", :name => "user[email_address]"
      assert_select "input#user_maintain_parts", :name => "user[maintain_parts]"
      assert_select "input#user_administrator", :name => "user[administrator]"
      assert_select "input#user_crypted_password", :name => "user[crypted_password]"
      assert_select "input#user_salt", :name => "user[salt]"
      assert_select "input#user_remember_token", :name => "user[remember_token]"
      assert_select "input#user_state", :name => "user[state]"
    end
  end
end

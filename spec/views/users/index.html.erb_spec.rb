require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :email_address => "Email Address",
        :maintain_parts => false,
        :administrator => false,
        :crypted_password => "Crypted Password",
        :salt => "Salt",
        :remember_token => "Remember Token",
        :state => "State"
      ),
      stub_model(User,
        :name => "Name",
        :email_address => "Email Address",
        :maintain_parts => false,
        :administrator => false,
        :crypted_password => "Crypted Password",
        :salt => "Salt",
        :remember_token => "Remember Token",
        :state => "State"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Crypted Password".to_s, :count => 2
    assert_select "tr>td", :text => "Salt".to_s, :count => 2
    assert_select "tr>td", :text => "Remember Token".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end

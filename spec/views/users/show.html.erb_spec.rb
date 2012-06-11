require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :email_address => "Email Address",
      :maintain_parts => false,
      :administrator => false,
      :crypted_password => "Crypted Password",
      :salt => "Salt",
      :remember_token => "Remember Token",
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email Address/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Crypted Password/)
    rendered.should match(/Salt/)
    rendered.should match(/Remember Token/)
    rendered.should match(/State/)
  end
end

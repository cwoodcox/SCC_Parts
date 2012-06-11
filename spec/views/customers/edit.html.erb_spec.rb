require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :customer_code => "MyString",
      :name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => "MyString",
      :phone => "MyString",
      :contact => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path(@customer), :method => "post" do
      assert_select "input#customer_customer_code", :name => "customer[customer_code]"
      assert_select "input#customer_name", :name => "customer[name]"
      assert_select "input#customer_address1", :name => "customer[address1]"
      assert_select "input#customer_address2", :name => "customer[address2]"
      assert_select "input#customer_city", :name => "customer[city]"
      assert_select "input#customer_state", :name => "customer[state]"
      assert_select "input#customer_zip_code", :name => "customer[zip_code]"
      assert_select "input#customer_phone", :name => "customer[phone]"
      assert_select "input#customer_contact", :name => "customer[contact]"
      assert_select "input#customer_email", :name => "customer[email]"
    end
  end
end

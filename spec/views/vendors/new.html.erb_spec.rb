require 'spec_helper'

describe "vendors/new" do
  before(:each) do
    assign(:vendor, stub_model(Vendor,
      :vendor_code => "MyString",
      :name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => "MyString",
      :phone => "MyString",
      :contact => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new vendor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vendors_path, :method => "post" do
      assert_select "input#vendor_vendor_code", :name => "vendor[vendor_code]"
      assert_select "input#vendor_name", :name => "vendor[name]"
      assert_select "input#vendor_address1", :name => "vendor[address1]"
      assert_select "input#vendor_address2", :name => "vendor[address2]"
      assert_select "input#vendor_city", :name => "vendor[city]"
      assert_select "input#vendor_state", :name => "vendor[state]"
      assert_select "input#vendor_zip_code", :name => "vendor[zip_code]"
      assert_select "input#vendor_phone", :name => "vendor[phone]"
      assert_select "input#vendor_contact", :name => "vendor[contact]"
      assert_select "input#vendor_email", :name => "vendor[email]"
    end
  end
end

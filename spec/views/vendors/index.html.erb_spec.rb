require 'spec_helper'

describe "vendors/index" do
  before(:each) do
    assign(:vendors, [
      stub_model(Vendor,
        :vendor_code => "Vendor Code",
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code",
        :phone => "Phone",
        :contact => "Contact",
        :email => "Email"
      ),
      stub_model(Vendor,
        :vendor_code => "Vendor Code",
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code",
        :phone => "Phone",
        :contact => "Contact",
        :email => "Email"
      )
    ])
  end

  it "renders a list of vendors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Vendor Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end

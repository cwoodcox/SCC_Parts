require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "Name",
        :serial_number => "Serial Number",
        :vendor_invoice => "Vendor Invoice",
        :scc_invoice => "Scc Invoice",
        :quantity => "9.99",
        :dollar_amount => "9.99",
        :warranty_years => 1,
        :warranty_days => 2,
        :item => 3,
        :comments => "MyText"
      ),
      stub_model(Product,
        :name => "Name",
        :serial_number => "Serial Number",
        :vendor_invoice => "Vendor Invoice",
        :scc_invoice => "Scc Invoice",
        :quantity => "9.99",
        :dollar_amount => "9.99",
        :warranty_years => 1,
        :warranty_days => 2,
        :item => 3,
        :comments => "MyText"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Serial Number".to_s, :count => 2
    assert_select "tr>td", :text => "Vendor Invoice".to_s, :count => 2
    assert_select "tr>td", :text => "Scc Invoice".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

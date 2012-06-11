require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Serial Number/)
    rendered.should match(/Vendor Invoice/)
    rendered.should match(/Scc Invoice/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
  end
end

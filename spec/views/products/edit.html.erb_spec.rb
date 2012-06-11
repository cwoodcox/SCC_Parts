require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :serial_number => "MyString",
      :vendor_invoice => "MyString",
      :scc_invoice => "MyString",
      :quantity => "9.99",
      :dollar_amount => "9.99",
      :warranty_years => 1,
      :warranty_days => 1,
      :item => 1,
      :comments => "MyText"
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path(@product), :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_serial_number", :name => "product[serial_number]"
      assert_select "input#product_vendor_invoice", :name => "product[vendor_invoice]"
      assert_select "input#product_scc_invoice", :name => "product[scc_invoice]"
      assert_select "input#product_quantity", :name => "product[quantity]"
      assert_select "input#product_dollar_amount", :name => "product[dollar_amount]"
      assert_select "input#product_warranty_years", :name => "product[warranty_years]"
      assert_select "input#product_warranty_days", :name => "product[warranty_days]"
      assert_select "input#product_item", :name => "product[item]"
      assert_select "textarea#product_comments", :name => "product[comments]"
    end
  end
end

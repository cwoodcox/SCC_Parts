require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :customer_code => "Customer Code",
      :name => "Name",
      :address1 => "Address1",
      :address2 => "Address2",
      :city => "City",
      :state => "State",
      :zip_code => "Zip Code",
      :phone => "Phone",
      :contact => "Contact",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer Code/)
    rendered.should match(/Name/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zip Code/)
    rendered.should match(/Phone/)
    rendered.should match(/Contact/)
    rendered.should match(/Email/)
  end
end

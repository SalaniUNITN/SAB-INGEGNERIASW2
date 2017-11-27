require 'rails_helper'

RSpec.describe "clients/show", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :name => "Name",
      :email => "Email",
      :p_iva => "P Iva",
      :city => "City",
      :street => "Street",
      :cap => "Cap",
      :street_number => "Street Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/P Iva/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Cap/)
    expect(rendered).to match(/Street Number/)
  end
end

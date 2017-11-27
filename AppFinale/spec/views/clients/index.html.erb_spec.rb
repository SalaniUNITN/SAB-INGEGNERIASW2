require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :name => "Name",
        :email => "Email",
        :p_iva => "P Iva",
        :city => "City",
        :street => "Street",
        :cap => "Cap",
        :street_number => "Street Number"
      ),
      Client.create!(
        :name => "Name",
        :email => "Email",
        :p_iva => "P Iva",
        :city => "City",
        :street => "Street",
        :cap => "Cap",
        :street_number => "Street Number"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "P Iva".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Cap".to_s, :count => 2
    assert_select "tr>td", :text => "Street Number".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :Name => "Name",
        :Surname => "Surname",
        :EMail => "E Mail",
        :Telephone => "Telephone",
        :Partita_Iva => "Partita Iva",
        :CF => "Cf",
        :Street_name => "Street Name",
        :cap => "Cap",
        :city => "City",
        :street_number => "Street Number"
      ),
      User.create!(
        :Name => "Name",
        :Surname => "Surname",
        :EMail => "E Mail",
        :Telephone => "Telephone",
        :Partita_Iva => "Partita Iva",
        :CF => "Cf",
        :Street_name => "Street Name",
        :cap => "Cap",
        :city => "City",
        :street_number => "Street Number"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "E Mail".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Partita Iva".to_s, :count => 2
    assert_select "tr>td", :text => "Cf".to_s, :count => 2
    assert_select "tr>td", :text => "Street Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cap".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Street Number".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "add_hours/index", type: :view do
  before(:each) do
    assign(:add_hours, [
      AddHour.create!(
        :name => "Name",
        :email => "Email",
        :Hourly_Wage => "Hourly Wage",
        :NHour => "N Hour",
        :Paid => "Paid"
      ),
      AddHour.create!(
        :name => "Name",
        :email => "Email",
        :Hourly_Wage => "Hourly Wage",
        :NHour => "N Hour",
        :Paid => "Paid"
      )
    ])
  end

  it "renders a list of add_hours" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Hourly Wage".to_s, :count => 2
    assert_select "tr>td", :text => "N Hour".to_s, :count => 2
    assert_select "tr>td", :text => "Paid".to_s, :count => 2
  end
end

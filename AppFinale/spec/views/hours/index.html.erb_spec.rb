require 'rails_helper'

RSpec.describe "hours/index", type: :view do
  before(:each) do
    assign(:hours, [
      Hour.create!(
        :name_user => "Name User",
        :email => "Email",
        :Hourly_Wage => "Hourly Wage",
        :NHour => "N Hour",
        :Paid => "Paid"
      ),
      Hour.create!(
        :name_user => "Name User",
        :email => "Email",
        :Hourly_Wage => "Hourly Wage",
        :NHour => "N Hour",
        :Paid => "Paid"
      )
    ])
  end

  it "renders a list of hours" do
    render
    assert_select "tr>td", :text => "Name User".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Hourly Wage".to_s, :count => 2
    assert_select "tr>td", :text => "N Hour".to_s, :count => 2
    assert_select "tr>td", :text => "Paid".to_s, :count => 2
  end
end

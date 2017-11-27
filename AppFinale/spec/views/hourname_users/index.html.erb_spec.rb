require 'rails_helper'

RSpec.describe "hourname_users/index", type: :view do
  before(:each) do
    assign(:hourname_users, [
      HournameUser.create!(
        :email => "Email",
        :Hourly_Wage => "Hourly Wage",
        :Nhour => "Nhour",
        :Paid => "Paid"
      ),
      HournameUser.create!(
        :email => "Email",
        :Hourly_Wage => "Hourly Wage",
        :Nhour => "Nhour",
        :Paid => "Paid"
      )
    ])
  end

  it "renders a list of hourname_users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Hourly Wage".to_s, :count => 2
    assert_select "tr>td", :text => "Nhour".to_s, :count => 2
    assert_select "tr>td", :text => "Paid".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "hourname_users/show", type: :view do
  before(:each) do
    @hourname_user = assign(:hourname_user, HournameUser.create!(
      :email => "Email",
      :Hourly_Wage => "Hourly Wage",
      :Nhour => "Nhour",
      :Paid => "Paid"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Hourly Wage/)
    expect(rendered).to match(/Nhour/)
    expect(rendered).to match(/Paid/)
  end
end

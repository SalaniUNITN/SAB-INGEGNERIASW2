require 'rails_helper'

RSpec.describe "hours/show", type: :view do
  before(:each) do
    @hour = assign(:hour, Hour.create!(
      :name_user => "Name User",
      :email => "Email",
      :Hourly_Wage => "Hourly Wage",
      :NHour => "N Hour",
      :Paid => "Paid"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name User/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Hourly Wage/)
    expect(rendered).to match(/N Hour/)
    expect(rendered).to match(/Paid/)
  end
end

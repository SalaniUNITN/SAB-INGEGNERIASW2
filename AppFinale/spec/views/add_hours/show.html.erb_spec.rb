require 'rails_helper'

RSpec.describe "add_hours/show", type: :view do
  before(:each) do
    @add_hour = assign(:add_hour, AddHour.create!(
      :name => "Name",
      :email => "Email",
      :Hourly_Wage => "Hourly Wage",
      :NHour => "N Hour",
      :Paid => "Paid"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Hourly Wage/)
    expect(rendered).to match(/N Hour/)
    expect(rendered).to match(/Paid/)
  end
end

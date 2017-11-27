require 'rails_helper'

RSpec.describe "add_hours/edit", type: :view do
  before(:each) do
    @add_hour = assign(:add_hour, AddHour.create!(
      :name => "MyString",
      :email => "MyString",
      :Hourly_Wage => "MyString",
      :NHour => "MyString",
      :Paid => "MyString"
    ))
  end

  it "renders the edit add_hour form" do
    render

    assert_select "form[action=?][method=?]", add_hour_path(@add_hour), "post" do

      assert_select "input[name=?]", "add_hour[name]"

      assert_select "input[name=?]", "add_hour[email]"

      assert_select "input[name=?]", "add_hour[Hourly_Wage]"

      assert_select "input[name=?]", "add_hour[NHour]"

      assert_select "input[name=?]", "add_hour[Paid]"
    end
  end
end

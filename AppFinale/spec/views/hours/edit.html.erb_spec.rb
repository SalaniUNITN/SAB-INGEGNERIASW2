require 'rails_helper'

RSpec.describe "hours/edit", type: :view do
  before(:each) do
    @hour = assign(:hour, Hour.create!(
      :name_user => "MyString",
      :email => "MyString",
      :Hourly_Wage => "MyString",
      :NHour => "MyString",
      :Paid => "MyString"
    ))
  end

  it "renders the edit hour form" do
    render

    assert_select "form[action=?][method=?]", hour_path(@hour), "post" do

      assert_select "input[name=?]", "hour[name_user]"

      assert_select "input[name=?]", "hour[email]"

      assert_select "input[name=?]", "hour[Hourly_Wage]"

      assert_select "input[name=?]", "hour[NHour]"

      assert_select "input[name=?]", "hour[Paid]"
    end
  end
end

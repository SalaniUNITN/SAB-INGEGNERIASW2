require 'rails_helper'

RSpec.describe "hours/new", type: :view do
  before(:each) do
    assign(:hour, Hour.new(
      :name_user => "MyString",
      :email => "MyString",
      :hourly_wage => "MyString",
      :NHour => "MyString"
    ))
  end

  it "renders new hour form" do
    render

    assert_select "form[action=?][method=?]", hours_path, "post" do

      assert_select "input[name=?]", "hour[name_user]"

      assert_select "input[name=?]", "hour[email]"

      assert_select "input[name=?]", "hour[hourly_wage]"

      assert_select "input[name=?]", "hour[NHour]"
    end
  end
end

require 'rails_helper'

RSpec.describe "add_hours/new", type: :view do
  before(:each) do
    assign(:add_hour, AddHour.new(
      :name => "MyString",
      :email => "MyString",
      :Hourly_Wage => "MyString",
      :NHour => "MyString",
      :Paid => "MyString"
    ))
  end

  it "renders new add_hour form" do
    render

    assert_select "form[action=?][method=?]", add_hours_path, "post" do

      assert_select "input[name=?]", "add_hour[name]"

      assert_select "input[name=?]", "add_hour[email]"

      assert_select "input[name=?]", "add_hour[Hourly_Wage]"

      assert_select "input[name=?]", "add_hour[NHour]"

      assert_select "input[name=?]", "add_hour[Paid]"
    end
  end
end

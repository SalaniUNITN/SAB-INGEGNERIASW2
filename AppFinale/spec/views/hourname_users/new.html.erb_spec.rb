require 'rails_helper'

RSpec.describe "hourname_users/new", type: :view do
  before(:each) do
    assign(:hourname_user, HournameUser.new(
      :email => "MyString",
      :Hourly_Wage => "MyString",
      :Nhour => "MyString",
      :Paid => "MyString"
    ))
  end

  it "renders new hourname_user form" do
    render

    assert_select "form[action=?][method=?]", hourname_users_path, "post" do

      assert_select "input[name=?]", "hourname_user[email]"

      assert_select "input[name=?]", "hourname_user[Hourly_Wage]"

      assert_select "input[name=?]", "hourname_user[Nhour]"

      assert_select "input[name=?]", "hourname_user[Paid]"
    end
  end
end

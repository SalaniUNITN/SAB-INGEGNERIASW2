require 'rails_helper'

RSpec.describe "hourname_users/edit", type: :view do
  before(:each) do
    @hourname_user = assign(:hourname_user, HournameUser.create!(
      :email => "MyString",
      :Hourly_Wage => "MyString",
      :Nhour => "MyString",
      :Paid => "MyString"
    ))
  end

  it "renders the edit hourname_user form" do
    render

    assert_select "form[action=?][method=?]", hourname_user_path(@hourname_user), "post" do

      assert_select "input[name=?]", "hourname_user[email]"

      assert_select "input[name=?]", "hourname_user[Hourly_Wage]"

      assert_select "input[name=?]", "hourname_user[Nhour]"

      assert_select "input[name=?]", "hourname_user[Paid]"
    end
  end
end

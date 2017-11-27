require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :Name => "MyString",
      :Surname => "MyString",
      :EMail => "MyString",
      :Telephone => "MyString",
      :Partita_Iva => "MyString",
      :CF => "MyString",
      :Street_name => "MyString",
      :cap => "MyString",
      :city => "MyString",
      :street_number => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[Name]"

      assert_select "input[name=?]", "user[Surname]"

      assert_select "input[name=?]", "user[EMail]"

      assert_select "input[name=?]", "user[Telephone]"

      assert_select "input[name=?]", "user[Partita_Iva]"

      assert_select "input[name=?]", "user[CF]"

      assert_select "input[name=?]", "user[Street_name]"

      assert_select "input[name=?]", "user[cap]"

      assert_select "input[name=?]", "user[city]"

      assert_select "input[name=?]", "user[street_number]"
    end
  end
end

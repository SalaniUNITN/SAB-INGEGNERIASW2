require 'rails_helper'

RSpec.describe "clients/new", type: :view do
  before(:each) do
    assign(:client, Client.new(
      :name => "MyString",
      :email => "MyString",
      :p_iva => "MyString",
      :city => "MyString",
      :street => "MyString",
      :cap => "MyString",
      :street_number => "MyString"
    ))
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do

      assert_select "input[name=?]", "client[name]"

      assert_select "input[name=?]", "client[email]"

      assert_select "input[name=?]", "client[p_iva]"

      assert_select "input[name=?]", "client[city]"

      assert_select "input[name=?]", "client[street]"

      assert_select "input[name=?]", "client[cap]"

      assert_select "input[name=?]", "client[street_number]"
    end
  end
end

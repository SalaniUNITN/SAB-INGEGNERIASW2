require 'rails_helper'

RSpec.describe "invoices/new", type: :view do
  before(:each) do
    assign(:invoice, Invoice.new(
      :name => "MyString",
      :p_ivatotal => "MyString",
      :bill => "MyString"
    ))
  end

  it "renders new invoice form" do
    render

    assert_select "form[action=?][method=?]", invoices_path, "post" do

      assert_select "input[name=?]", "invoice[name]"

      assert_select "input[name=?]", "invoice[p_ivatotal]"

      assert_select "input[name=?]", "invoice[bill]"
    end
  end
end

require 'rails_helper'

RSpec.describe "invoices/edit", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :name => "MyString",
      :p_ivatotal => "MyString",
      :bill => "MyString"
    ))
  end

  it "renders the edit invoice form" do
    render

    assert_select "form[action=?][method=?]", invoice_path(@invoice), "post" do

      assert_select "input[name=?]", "invoice[name]"

      assert_select "input[name=?]", "invoice[p_ivatotal]"

      assert_select "input[name=?]", "invoice[bill]"
    end
  end
end

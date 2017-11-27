require 'rails_helper'

RSpec.describe "invoices/index", type: :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
        :name => "Name",
        :p_ivatotal => "P Ivatotal",
        :bill => "Bill"
      ),
      Invoice.create!(
        :name => "Name",
        :p_ivatotal => "P Ivatotal",
        :bill => "Bill"
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "P Ivatotal".to_s, :count => 2
    assert_select "tr>td", :text => "Bill".to_s, :count => 2
  end
end

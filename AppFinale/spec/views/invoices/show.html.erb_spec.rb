require 'rails_helper'

RSpec.describe "invoices/show", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :name => "Name",
      :p_ivatotal => "P Ivatotal",
      :bill => "Bill"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/P Ivatotal/)
    expect(rendered).to match(/Bill/)
  end
end

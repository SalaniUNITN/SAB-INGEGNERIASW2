require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :Name => "Name",
      :Surname => "Surname",
      :EMail => "E Mail",
      :Telephone => "Telephone",
      :Partita_Iva => "Partita Iva",
      :CF => "Cf",
      :Street_name => "Street Name",
      :cap => "Cap",
      :city => "City",
      :street_number => "Street Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Surname/)
    expect(rendered).to match(/E Mail/)
    expect(rendered).to match(/Telephone/)
    expect(rendered).to match(/Partita Iva/)
    expect(rendered).to match(/Cf/)
    expect(rendered).to match(/Street Name/)
    expect(rendered).to match(/Cap/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Street Number/)
  end
end

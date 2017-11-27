require 'rails_helper'

RSpec.describe "AddHours", type: :request do
  describe "GET /add_hours" do
    it "works! (now write some real specs)" do
      get add_hours_path
      expect(response).to have_http_status(200)
    end
  end
end

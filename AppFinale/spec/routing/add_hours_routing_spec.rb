require "rails_helper"

RSpec.describe AddHoursController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/add_hours").to route_to("add_hours#index")
    end

    it "routes to #new" do
      expect(:get => "/add_hours/new").to route_to("add_hours#new")
    end

    it "routes to #show" do
      expect(:get => "/add_hours/1").to route_to("add_hours#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/add_hours/1/edit").to route_to("add_hours#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/add_hours").to route_to("add_hours#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/add_hours/1").to route_to("add_hours#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/add_hours/1").to route_to("add_hours#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/add_hours/1").to route_to("add_hours#destroy", :id => "1")
    end

  end
end

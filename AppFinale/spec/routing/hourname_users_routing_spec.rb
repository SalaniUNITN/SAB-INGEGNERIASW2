require "rails_helper"

RSpec.describe HournameUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hourname_users").to route_to("hourname_users#index")
    end

    it "routes to #new" do
      expect(:get => "/hourname_users/new").to route_to("hourname_users#new")
    end

    it "routes to #show" do
      expect(:get => "/hourname_users/1").to route_to("hourname_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hourname_users/1/edit").to route_to("hourname_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/hourname_users").to route_to("hourname_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hourname_users/1").to route_to("hourname_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/hourname_users/1").to route_to("hourname_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hourname_users/1").to route_to("hourname_users#destroy", :id => "1")
    end

  end
end

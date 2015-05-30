require "rails_helper"

RSpec.describe RoastsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/roasts").to route_to("roasts#index")
    end

    it "routes to #new" do
      expect(:get => "/roasts/new").to route_to("roasts#new")
    end

    it "routes to #show" do
      expect(:get => "/roasts/1").to route_to("roasts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/roasts/1/edit").to route_to("roasts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/roasts").to route_to("roasts#create")
    end

    it "routes to #update" do
      expect(:put => "/roasts/1").to route_to("roasts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/roasts/1").to route_to("roasts#destroy", :id => "1")
    end

  end
end

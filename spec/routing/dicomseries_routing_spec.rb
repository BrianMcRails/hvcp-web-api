require "rails_helper"

RSpec.describe DicomseriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dicomseries").to route_to("dicomseries#index")
    end

    it "routes to #new" do
      expect(:get => "/dicomseries/new").to route_to("dicomseries#new")
    end

    it "routes to #show" do
      expect(:get => "/dicomseries/1").to route_to("dicomseries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dicomseries/1/edit").to route_to("dicomseries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dicomseries").to route_to("dicomseries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dicomseries/1").to route_to("dicomseries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dicomseries/1").to route_to("dicomseries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dicomseries/1").to route_to("dicomseries#destroy", :id => "1")
    end

  end
end

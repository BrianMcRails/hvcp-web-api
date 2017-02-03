require "rails_helper"

RSpec.describe DicomimagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dicomimages").to route_to("dicomimages#index")
    end

    it "routes to #new" do
      expect(:get => "/dicomimages/new").to route_to("dicomimages#new")
    end

    it "routes to #show" do
      expect(:get => "/dicomimages/1").to route_to("dicomimages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dicomimages/1/edit").to route_to("dicomimages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dicomimages").to route_to("dicomimages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dicomimages/1").to route_to("dicomimages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dicomimages/1").to route_to("dicomimages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dicomimages/1").to route_to("dicomimages#destroy", :id => "1")
    end

  end
end

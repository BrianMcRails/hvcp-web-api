require "rails_helper"

RSpec.describe DicomstudiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dicomstudies").to route_to("dicomstudies#index")
    end

    it "routes to #new" do
      expect(:get => "/dicomstudies/new").to route_to("dicomstudies#new")
    end

    it "routes to #show" do
      expect(:get => "/dicomstudies/1").to route_to("dicomstudies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dicomstudies/1/edit").to route_to("dicomstudies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dicomstudies").to route_to("dicomstudies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dicomstudies/1").to route_to("dicomstudies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dicomstudies/1").to route_to("dicomstudies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dicomstudies/1").to route_to("dicomstudies#destroy", :id => "1")
    end

  end
end

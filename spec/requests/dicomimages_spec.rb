require 'rails_helper'

RSpec.describe "Dicomimages", type: :request do
  describe "GET /dicomimages" do
    it "works! (now write some real specs)" do
      get dicomimages_path
      expect(response).to have_http_status(200)
    end
  end
end

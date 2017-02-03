require 'rails_helper'

RSpec.describe "Dicomstudies", type: :request do
  describe "GET /dicomstudies" do
    it "works! (now write some real specs)" do
      get dicomstudies_path
      expect(response).to have_http_status(200)
    end
  end
end
